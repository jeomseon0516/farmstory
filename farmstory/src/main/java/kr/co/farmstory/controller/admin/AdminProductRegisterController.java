package kr.co.farmstory.controller.admin;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

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

		ProductDTO dto = new ProductDTO();

		dto.setProdName(prodName);
		dto.setProdType(prodType);
		dto.setProdPrice(Integer.parseInt(prodPrice));
		dto.setProdPoint(Integer.parseInt(prodPoint));
		dto.setProdDiscount(Integer.parseInt(prodDiscount));
		dto.setProdDeliveryCost(Integer.parseInt(prodDeliveryCost));
		dto.setProdStock(Integer.parseInt(prodStock));
		dto.setProdRemark(prodRemark);

		ProductService.INSTANCE.insert(dto);

		resp.sendRedirect(req.getContextPath() + "/admin/productList.do");
	}
}