package kr.co.farmstory.dao;

import java.util.ArrayList;
import java.util.List;

import kr.co.farmstory.dto.OrderDTO;
import kr.co.farmstory.dto.OrderItemDTO;
import kr.co.farmstory.sql.SqlOrder;
import kr.co.farmstory.util.DBHelper;

public class OrderDAO extends DBHelper {
	
	// 싱글톤
	private static OrderDAO instance = new OrderDAO();

	public static OrderDAO getInstance() {
		return instance;
	}

	private OrderDAO() {}
	
	
	// 전체 주문 목록 조회 - 관리자 메인 주문현황용
	public List<OrderDTO> selectAll() {
		
		List<OrderDTO> orders = new ArrayList<>();
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(SqlOrder.SELECT_ALL_ORDER);
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				OrderDTO dto = new OrderDTO();
				
				dto.setOrderId(rs.getInt("id"));
				dto.setUserId(rs.getString("user_id"));
				dto.setTotProdPrice(rs.getInt("product_total_price"));
				dto.setTotProdQty(rs.getInt("quantity"));
				dto.setTotDeliveryCost(rs.getInt("delivery_cost"));
				dto.setReceiverName(rs.getString("receiver_name"));
				dto.setReceiverHp(rs.getString("receiver_phone"));
				dto.setUsedPoint(rs.getInt("used_point"));
				dto.setTotPrice(rs.getInt("total_price"));
				dto.setReceiverZip(rs.getString("receiver_zipcode"));
				dto.setReceiverAddr(rs.getString("receiver_address"));
				dto.setReceiverDetailAddr(rs.getString("receiver_detail_address"));
				dto.setPayment(rs.getString("payment_method"));
				dto.setEtc(rs.getString("etc"));
				
				// 관리자 메인 주문현황 출력용
				dto.setProdName(rs.getString("prod_name"));
				dto.setCreatedAt(rs.getString("created_at"));
				
				orders.add(dto);
			}
			
			closeAll();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return orders;
	}
	
	
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
			
			if (rs.next()) {
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
	
	
	// 주문 상품 insert
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
