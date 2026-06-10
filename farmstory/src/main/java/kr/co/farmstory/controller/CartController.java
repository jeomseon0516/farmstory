package kr.co.farmstory.controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmstory.dto.CartDTO;
import kr.co.farmstory.service.CartService;

@WebServlet(urlPatterns = {"/market/cart/cart.do"})
public class CartController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	// 서비스 가져오기
	private CartService service = CartService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 파라미터 수신
		String userId = "1";
		String prodId = req.getParameter("prodId");
		String prodQty = req.getParameter("prodQty");
		
		// 장바구니에 추가된 상품 정보 카트 테이블에 넣기
		service.insert(userId, prodId, prodQty);
		
		// 장바구니 정보 조회하기
		List<CartDTO> cartDtoList = service.searchAll(userId);
		System.out.println(cartDtoList);
		
		// View 참조
		req.setAttribute("cartDtoList", cartDtoList);
		
		// 장보기의 장바구니 페이지 요청
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/market/cart/cart.jsp");
		dispatcher.forward(req, resp);
			
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}

}
