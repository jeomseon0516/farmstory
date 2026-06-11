package kr.co.farmstory.util;

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

}
