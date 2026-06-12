package kr.co.farmstory.service;

import java.util.List;

import kr.co.farmstory.dao.OrderDAO;
import kr.co.farmstory.dto.OrderDTO;
import kr.co.farmstory.dto.OrderItemDTO;

public enum OrderService {
	
	// 열거 상수 객체(싱글톤)
	INSTANCE;
	
	// DAO 가져오기
	private OrderDAO orderDao = OrderDAO.getInstance();
	
	
	// 전체 주문 목록 조회 - 관리자 메인 주문현황용
	public List<OrderDTO> findAll() {
		return orderDao.selectAll();
	}
	
	
	// Order 테이블에 주문 입력
	public int insert(OrderDTO dto) {
		return orderDao.insert(dto);
	}
	
	
	// OrderItem 테이블에 입력
	public void insert(int orderId, OrderItemDTO orderItemDto) {
		orderDao.insert(orderId, orderItemDto);
	}
}