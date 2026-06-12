package kr.co.farmstory.controller.admin;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import kr.co.farmstory.dao.FileDAO;
import kr.co.farmstory.dto.FileDTO;
import kr.co.farmstory.dto.ProductDTO;
import kr.co.farmstory.service.ProductService;

@WebServlet("/admin/productRegister.do")
@MultipartConfig
public class AdminProductRegisterController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	// 상품등록 화면 출력
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		RequestDispatcher dispatcher =
				req.getRequestDispatcher("/WEB-INF/views/admin/product-register/product-register.jsp");

		dispatcher.forward(req, resp);
	}

	// 상품등록 처리
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");

		String prodName = req.getParameter("prodName");
		String prodType = req.getParameter("prodType");
		String prodPrice = req.getParameter("prodPrice");
		String prodPoint = req.getParameter("prodPoint");
		String prodDiscount = req.getParameter("prodDiscount");
		String prodDeliveryCost = req.getParameter("prodDeliveryCost");
		String prodStock = req.getParameter("prodStock");
		String prodRemark = req.getParameter("prodRemark");

		// 이미지 파일 받기
		Part listImg = req.getPart("listImg");
		Part basicImg = req.getPart("basicImg");
		Part detailImg = req.getPart("detailImg");

		// 이미지 저장 후 file 테이블 id 받기
		int listImageFileId = uploadFile(req, listImg);
		int infoImageFileId = uploadFile(req, basicImg);
		int descriptionImageFileId = uploadFile(req, detailImg);

		ProductDTO dto = new ProductDTO();

		dto.setProdName(prodName);
		dto.setProdType(prodType);
		dto.setProdPrice(Integer.parseInt(prodPrice));
		dto.setProdPoint(Integer.parseInt(prodPoint));
		dto.setProdDiscount(Integer.parseInt(prodDiscount));
		dto.setProdDeliveryCost(Integer.parseInt(prodDeliveryCost));
		dto.setProdStock(Integer.parseInt(prodStock));
		dto.setProdRemark(prodRemark);

		// product 테이블 외래키에 file.id 넣기
		dto.setProdListImageFileId(listImageFileId);
		dto.setProdInfoImageFileId(infoImageFileId);
		dto.setProdDescriptionImageFileId(descriptionImageFileId);

		ProductService.INSTANCE.insert(dto);

		resp.sendRedirect(req.getContextPath() + "/admin/productList.do");
	}

	// 파일 저장 + file 테이블 INSERT + 생성된 id 반환
	private int uploadFile(HttpServletRequest req, Part part) throws IOException {

		String originalName = part.getSubmittedFileName();

		// 파일 선택 안 했을 때
		if (originalName == null || originalName.isEmpty()) {
			return 0;
		}

		// 실제 저장 경로: webapp/uploads/product
		String uploadPath = req.getServletContext().getRealPath("/uploads/product");

		File uploadDir = new File(uploadPath);
		if (!uploadDir.exists()) {
			uploadDir.mkdirs();
		}

		// 파일명 중복 방지
		String storedName = UUID.randomUUID().toString() + "_" + originalName;

		// 실제 파일 저장
		part.write(uploadPath + File.separator + storedName);

		// file 테이블에 저장
		FileDTO fileDTO = new FileDTO();
		fileDTO.setOriginalName(originalName);
		fileDTO.setStoredName(storedName);

		int fileId = FileDAO.INSTANCE.insert(fileDTO);

		return fileId;
	}
}