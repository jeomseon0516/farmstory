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
import kr.co.farmstory.dto.OrderDTO;
import kr.co.farmstory.dto.OrderItemDTO;
import kr.co.farmstory.service.CartService;
import kr.co.farmstory.service.OrderService;

@WebServlet(urlPatterns = {"/market/checkout/checkout.do", "/market/checkout/order.do"})
public class OrderController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	// 서비스 가져오기
	private CartService cartService = CartService.INSTANCE;
	private OrderService orderService = OrderService.INSTANCE;
	
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
		
		// 결제 눌러서 주문하기
		if(reqUri.endsWith("/market/checkout/order.do")) {
			
			// 자바스크립트로 계산하여 hidden으로 넘긴 데이터 받기 (숫자 형태)
		    int totalProdPrice     = Integer.parseInt(req.getParameter("totalProdPrice"));
		    int prodCount          = Integer.parseInt(req.getParameter("prodCount"));
		    int totalProdDeliveryFee = Integer.parseInt(req.getParameter("totalProdDeliveryFee"));
		    int totalUsedPoint     = Integer.parseInt(req.getParameter("totalUsedPoint"));
		    int totalOrderPrice    = Integer.parseInt(req.getParameter("totalOrderPrice"));
		    
		    // 사용자가 직접 폼에 입력한 텍스트 및 라디오 데이터 받기
		    String receiverName       = req.getParameter("receiverName");
		    String receiverHp         = req.getParameter("receiverHp");
		    String receiverZip        = req.getParameter("receiverZip");
		    String receiverAddr       = req.getParameter("receiverAddr");
		    String receiverDetailAddr = req.getParameter("receiverDetailAddr");
		    String payment            = req.getParameter("payment");
		    String etc                = req.getParameter("etc");
		    
		    // product 정보 받기
		    String[] prodIds = req.getParameterValues("orderProdId");
		    String[] prodPrices = req.getParameterValues("orderProdPrice");
		    String[] prodDiscounts = req.getParameterValues("orderProdDiscount");
		    String[] prodQtys = req.getParameterValues("orderProdQty");
		    
		    List<OrderItemDTO> orderItemDto = new ArrayList<>();
		    
		    if (prodIds != null) {
		        for (int i = 0; i < prodIds.length; i++) {
		            OrderItemDTO item = new OrderItemDTO();
		            
		            item.setProdId(Integer.parseInt(prodIds[i]));
		            item.setProdPrice(Integer.parseInt(prodPrices[i]));
		            item.setProdDiscount(Integer.parseInt(prodDiscounts[i]));
		            item.setProdQty(Integer.parseInt(prodQtys[i]));
		            


		            // 리스트에 추가
		            orderItemDto.add(item);
		        }
		    }
		    
		    
		    // System.out.println("결제 총 금액: " + totalOrderPrice + "원, 수령인: " + receiverName);
		    
		    // OrderService 호출하기
		    OrderDTO dto = new OrderDTO();
		    dto.setUserId("abc");  // 아직 미구현
		    dto.setTotProdPrice(totalProdPrice);
		    dto.setTotProdQty(prodCount);
		    dto.setTotDeliveryCost(totalProdDeliveryFee);
		    dto.setReceiverName(receiverName);
		    dto.setReceiverHp(receiverHp);
		    dto.setUsedPoint(totalUsedPoint);
		    dto.setTotPrice(totalOrderPrice);
		    dto.setReceiverZip(receiverZip);
		    dto.setReceiverAddr(receiverAddr);
		    dto.setReceiverDetailAddr(receiverDetailAddr);
		    dto.setPayment(payment);
		    dto.setEtc(etc);
		    
			int orderId = orderService.insert(dto);
			
			System.out.println(orderItemDto);
			
			// OrderItemService 호출하기
			for(OrderItemDTO itemDto : orderItemDto) {
				orderService.insert(orderId, itemDto);
			}

			
			resp.sendRedirect("/farmstory/main/main.do");
		}
		
		
	}

}
