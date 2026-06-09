package kr.co.farmstory.sql;

public class PostSQL {
	
	public static String SELECT_POST = "SELECT * FROM Post WHERE id=?";
	public static String SELECT_ALL_POST = "SELECT * FROM Post";
	
	public static String INSERT_POST = "INSERT INTO Post SET "
			+ "writer_id=?,"
			+ "category=?,"
			+ "title=?,"
			+ "content=?,"
			+ "ip_address=?";
	
	public static String INCREASE_VIEW_COUNT = "UPDATE Post SET "
			+ "view_count=view_count+1 "
			+ "WHERE post_id=?";
	
	public static String UPDATE_POST = "UPDATE Post SET "
			+ "title=?,"
			+ "content=? "
			+ "WHERE id=?";
	
	public static String DELETE_POST = "DELETE FROM Post WHERE id=?";
}
