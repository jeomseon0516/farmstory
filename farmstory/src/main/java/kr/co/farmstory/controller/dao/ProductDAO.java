package kr.co.farmstory.controller.dao;

import java.util.ArrayList;
import java.util.List;

import kr.co.farmstory.controller.dto.ProductDTO;
import kr.co.farmstory.controller.util.DBHelper;

public class ProductDAO extends DBHelper {
	
	// 싱글톤
	private static ProductDAO instance = new ProductDAO();
	public static ProductDAO getInstance() {
		return instance;
	}
	private ProductDAO() {}
	
	// 기본 CRUD 메서드
	
	// 전체 상품 목록 반환
	public List<ProductDTO> selectAll() {
		
		// 반환용 List
		List<ProductDTO> dtoList = new ArrayList<>();
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(null);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				ProductDTO dto = new ProductDTO();
				dtoList.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dtoList;
		
	}

}
