package kr.co.farmstory.dao;

import java.util.ArrayList;
import java.util.List;

import kr.co.farmstory.dto.CartDTO;
import kr.co.farmstory.util.DBHelper;
import kr.co.farmstory.util.SqlCart;

public class CartDAO extends DBHelper {
	
	// 싱글톤
	private static CartDAO instance = new CartDAO();
	public static CartDAO getInstance() {
		return instance;
	}
	private CartDAO() {}
	
	// 상품을 cart 테이블에 insert
	public void insert(String userId, String prodId, String prodQty) {
		
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(SqlCart.INSERT_CART);
			psmt.setString(1, userId);
			psmt.setInt(2, Integer.parseInt(prodId));
			psmt.setInt(3, Integer.parseInt(prodQty));
			psmt.executeUpdate();
			
			closeAll();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public List<CartDTO> searchAll(String userId) {
		
		List<CartDTO> cartDtoList = new ArrayList<>();
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(SqlCart.SEARCH_ALL_CART);
			psmt.setString(1, userId);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				CartDTO dto = new CartDTO();
				dto.setCartId(rs.getInt(1));
				dto.setUserId(rs.getString(2));
				dto.setProdId(rs.getInt(3));
				dto.setProdQty(rs.getInt(4));
				dto.setProdName(rs.getString(5));
				dto.setProdType(rs.getString(6));
				dto.setProdPrice(rs.getInt(7));
				dto.setProdPoint(rs.getInt(8));
				dto.setProdDiscount(rs.getInt(9));
				dto.setProdDeliveryCost(rs.getInt(10));
				dto.setProdListImageFileId(rs.getInt(11));
				dto.setProdTotalPrice((int)(dto.getProdPrice() * ((100.0 - dto.getProdDiscount())/100)) * dto.getProdQty());
				cartDtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cartDtoList;
	}
}
