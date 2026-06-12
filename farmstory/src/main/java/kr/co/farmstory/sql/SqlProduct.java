package kr.co.farmstory.sql;

public class SqlProduct {
	
	// Product
	
	// 전체 상품 목록 조회 + 목록 이미지 파일명 조회
	public static final String SELECT_ALL_PRODUCT ="SELECT p.*, f.stored_name "
													  + "FROM Product p "
													  + "JOIN file f ON p.list_image_file_id = f.id "
													  + "ORDER BY p.id DESC";
	
	// 상품 1건 조회
	public static final String SELECT_PRODUCT ="SELECT * FROM Product WHERE id=?";
	
	// 상품 등록
	public static final String INSERT_PRODUCT ="INSERT INTO Product SET "
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