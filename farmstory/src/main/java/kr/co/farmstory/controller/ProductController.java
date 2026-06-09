package kr.co.farmstory.controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmstory.controller.dto.ProductDTO;
import service.ProductService;

@WebServlet(urlPatterns = {"/market/product-list/product-list.do"})
public class ProductController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	// 서비스 가져오기(열거상수 객체)
	private ProductService service = ProductService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String reqUri = req.getRequestURI();
		
		if (reqUri.endsWith("/market/product-list/product-list.do")) {
			
			// 전체 상품 목록 조회하기
			List<ProductDTO> dtoList = service.findAll();
			
			// View 참조
			req.setAttribute("dtoList", dtoList);
			
			// 장보기 - 상품목록 페이지 요청
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/market/product-list/product-list.jsp");
			dispatcher.forward(req, resp);
		}
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	
	}

}
