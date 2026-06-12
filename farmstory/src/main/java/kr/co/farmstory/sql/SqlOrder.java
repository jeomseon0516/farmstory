package kr.co.farmstory.sql;

public class SqlOrder {
	
	// Order
	public static final String INSERT_ORDER = "INSERT INTO `Order` SET "
												+ "user_id=?,"
												+ "product_total_price=?,"
												+ "quantity=?,"
												+ "delivery_cost=?,"
												+ "receiver_name=?,"
												+ "receiver_phone=?,"
												+ "used_point=?,"
												+ "total_price=?,"
												+ "receiver_zipcode=?,"
												+ "receiver_address=?,"
												+ "receiver_detail_address=?,"
												+ "payment_method=?,"
												+ "etc=?";
	public static final String SELECT_MAX_ORDER = "SELECT MAX(id) FROM `Order`";
	public static final String INSERT_ORDER_ITEM = "INSERT INTO `orderitem` SET "
													+ "order_id=?,"
													+ "product_id=?,"
													+ "price=?,"
													+ "discount=?,"
													+ "quantity=?";
	
	// 관리자 메인 주문현황 조회
		public static final String SELECT_ALL_ORDER ="SELECT "
													  + "o.id, "
													  + "o.user_id, "
													  + "o.product_total_price, "
													  + "o.quantity, "
													  + "o.delivery_cost, "
													  + "o.receiver_name, "
													  + "o.receiver_phone, "
													  + "o.used_point, "
													  + "o.total_price, "
													  + "o.receiver_zipcode, "
													  + "o.receiver_address, "
													  + "o.receiver_detail_address, "
													  + "o.payment_method, "
													  + "o.etc, "
													  + "o.created_at, "
													  + "p.name AS prod_name "
													  + "FROM `Order` o "
													  + "LEFT JOIN `orderitem` oi ON o.id = oi.order_id "
													  + "LEFT JOIN `Product` p ON oi.product_id = p.id "
													  + "GROUP BY o.id "
													  + "ORDER BY o.id DESC";
											
}
