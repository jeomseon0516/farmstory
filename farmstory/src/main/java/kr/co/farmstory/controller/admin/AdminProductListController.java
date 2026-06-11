package kr.co.farmstory.controller.admin;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmstory.dto.ProductDTO;
import kr.co.farmstory.service.ProductService;

@WebServlet("/admin/productList.do")
public class AdminProductListController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		// ProductService 싱글톤 객체 가져오기
		ProductService service = ProductService.INSTANCE;
		
		// DB에서 상품 목록 조회
		List<ProductDTO> products = service.findAll();
		
		// 조회한 상품 목록을 JSP에서 사용할 수 있도록 request 영역에 저장
		req.setAttribute("products", products);
		
		// 상품목록 JSP 화면으로 이동 준비
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/product-list/product-list.jsp");

		// request와 response를 JSP로 전달
		dispatcher.forward(req, resp);			
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	

	
}
                                                      