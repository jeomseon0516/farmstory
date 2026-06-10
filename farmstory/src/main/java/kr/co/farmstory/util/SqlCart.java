package kr.co.farmstory.util;

public class SqlCart {
	
	// Chat
	public static final String INSERT_CART = "INSERT INTO Cart SET "
												+ "user_id=?,"
												+ "product_id=?,"
												+ "quantity=?";
	public static final String SEARCH_ALL_CART = "SELECT c.id ,c.user_id, c.product_id, c.quantity, p.name, p.type, p.price, p.point, p.discount, p.delivery_cost, p.list_image_file_id "
													+ "FROM Cart AS c JOIN Product AS p "
													+ "ON p.id = c.product_id WHERE c.user_id = ?";
}
