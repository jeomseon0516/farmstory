package kr.co.farmstory.dao;

import java.util.List;

import kr.co.farmstory.dto.OrderDTO;
import kr.co.farmstory.dto.OrderItemDTO;
import kr.co.farmstory.util.DBHelper;
import kr.co.farmstory.util.SqlOrder;

public class OrderDAO extends DBHelper {
	
	// 싱글톤
	private static OrderDAO instance = new OrderDAO();
	public static OrderDAO getInstance() {
		return instance;
	}
	private OrderDAO() {}
	
	// 주문을 Order 테이블에 insert
	public int insert(OrderDTO dto) {
		
		// 반환용 order 번호
		int orderId = 0;
		
		try {
			conn = getConnection();
			conn.setAutoCommit(false);
			psmt = conn.prepareStatement(SqlOrder.INSERT_ORDER);
			psmt.setString(1, dto.getUserId());
			psmt.setInt(2, dto.getTotProdPrice());
			psmt.setInt(3, dto.getTotProdQty());
			psmt.setInt(4, dto.getTotDeliveryCost());
			psmt.setString(5, dto.getReceiverName());
			psmt.setString(6, dto.getReceiverHp());
			psmt.setInt(7, dto.getUsedPoint());
			psmt.setInt(8, dto.getTotPrice());
			psmt.setString(9, dto.getReceiverZip());
			psmt.setString(10, dto.getReceiverAddr());
			psmt.setString(11, dto.getReceiverDetailAddr());
			psmt.setString(12, dto.getPayment());
			psmt.setString(13, dto.getEtc());
			psmt.executeUpdate();
			
			stmt = conn.createStatement();
			rs = stmt.executeQuery(SqlOrder.SELECT_MAX_ORDER);
			
			if(rs.next()) {
				orderId = rs.getInt(1);
			}
			
			conn.commit();
			closeAll();
			
		} catch (Exception e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
		}
		return orderId;
	}
	
	public void insert(int orderId, OrderItemDTO dto) {
		
		try {
			
			conn = getConnection();
			psmt = conn.prepareStatement(SqlOrder.INSERT_ORDER_ITEM);
			psmt.setInt(1, orderId);
			psmt.setInt(2, dto.getProdId());
			psmt.setInt(3, dto.getProdPrice());
			psmt.setInt(4, dto.getProdDiscount());
			psmt.setInt(5, dto.getProdQty());
			psmt.executeUpdate();
			
			
			closeAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	

}