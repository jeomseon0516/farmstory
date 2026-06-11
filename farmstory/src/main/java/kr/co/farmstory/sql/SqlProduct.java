package kr.co.farmstory.sql;

public class SqlProduct {
	
	// Product
	public static final String SELECT_ALL_PRODUCT = "SELECT * FROM Product";
	public static final String SELECT_PRODUCT = "SELECT * FROM Product WHERE id=?";

	public static final String INSERT_PRODUCT = "INSERT INTO Product SET "
												  + "name=?, "
												  + "type=?, "
												  + "price=?, "
												  + "point=?, "
												  + "discount=?, "
												  + "delivery_cost=?, "
												  + "stock=?, "
												  + "list_image_file_id=?, "
												  + "info_image_file_id=?, "
												  + "description_image_file_id=?, "
												  + "remark=?";
	
	
}
