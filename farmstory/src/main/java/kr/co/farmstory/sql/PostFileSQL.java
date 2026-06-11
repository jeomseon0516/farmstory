package kr.co.farmstory.sql;

public class PostFileSQL {
	public static final String INSERT = "INSERT INTO PostFile SET "
			+ "post_id=?,"
			+ "file_id=?";
	
	public static final String SELECT_BY_POST_ID = "SELECT * FROM PostFile WHERE post_id=?";
	
	public static final String INCREASE_DOWNLOAD_COUNT = "UPDATE PostFile SET "
			+ "download_count=download_count+1 "
			+ "WHERE id=?";
	
	public static final String DELETE_BY_POST_ID = "DELETE FROM PostFile WHERE post_id=?";
	
}
