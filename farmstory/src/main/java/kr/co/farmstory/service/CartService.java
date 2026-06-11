package kr.co.farmstory.service;

import java.util.List;

import kr.co.farmstory.dao.CartDAO;
import kr.co.farmstory.dto.CartDTO;

public enum CartService {
	
	// 열거 상수 객체(싱글톤)
	INSTANCE;
	
	// DAO 가져오기
	private CartDAO dao = CartDAO.getInstance();
	
	// Cart 테이블에 상품 입력
	public void insert(String userId, String prodId, String prodQty) {
		dao.insert(userId, prodId, prodQty);
	}
	
	// Cart 테이블에서 특정 정보 조회
	public CartDTO search(String userId) {
		return dao.search(userId);
	}
			
	
	// Cart 테이블에서 장바구니 정보 조회
	public List<CartDTO> searchAll(String userId) {
		return dao.searchAll(userId);
	}
	

}
