package kr.co.farmstory.service;

import java.util.List;

import kr.co.farmstory.dao.ProductDAO;
import kr.co.farmstory.dto.ProductDTO;

public enum ProductService {
	
	// 열거 상수 객체(싱글톤)
	INSTANCE;
	
	// DAO 가져오기
	private ProductDAO dao = ProductDAO.getInstance();
	
	// DAO 호출 서비스 메서드
	// 전체 상품 목록 조회
	public List<ProductDTO> findAll() {
		return dao.selectAll();
	}
	
	public ProductDTO findById(String prodId) {
		return dao.select(prodId);
	}
}
