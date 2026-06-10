package kr.co.farmstory.controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/market/cart/cart.do"})
public class CartController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 파라미터 수신
		String prodId = req.getParameter("prodId");
		String prodQty = req.getParameter("prodQty");
		
		
		
		// 장보기의 장바구니 페이지 요청
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/market/cart/cart.jsp");
		dispatcher.forward(req, resp);
			
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}

}
