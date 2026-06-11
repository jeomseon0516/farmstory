package kr.co.farmstory.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmstory.dto.CartDTO;
import kr.co.farmstory.service.CartService;

@WebServlet(urlPatterns = {"/market/checkout/checkout.do"})
public class OrderController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	// 서비스 가져오기
	private CartService cartService = CartService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String reqUri = req.getRequestURI();
		
		if(reqUri.endsWith("/market/checkout/checkout.do")) {
			
			// 각 파라미터가 체크된 순서대로 배열로 들어옵니다 (인덱스가 일치함)
			String[] cartIds = req.getParameterValues("selectedItems");
			
			if (cartIds != null) {
			    for (String id : cartIds) {
			        System.out.println("선택된 장바구니 ID: " + id);
			    }
			} else {
			    System.out.println("cartIds가 null입니다. 데이터가 안 넘어왔어요!");
			}
			
			// 주문하기에 보여주는 리스트 만들기
			List<CartDTO> cartDtoList = new ArrayList<>();
			
			for(String cartId : cartIds) {
				CartDTO dto = cartService.search(cartId);
				cartDtoList.add(dto);
			}
			
			// View 참조
			req.setAttribute("cartDtoList", cartDtoList);
			
			// 장보기의 장바구니 페이지 요청
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/market/checkout/checkout.jsp");
			dispatcher.forward(req, resp);
		}
		
	}

}
