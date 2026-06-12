package kr.co.farmstory.sql;

public class CommentSQL {
	public static final String INSERT_COMMENT = "INSERT INTO Comment SET " 
			+ "post_id=?," 
			+ "writer_id=?,"
			+ "content=?," 
			+ "ip_address=?"; 

	public static final String SELECT_COMMENT = "SELECT * FROM Comment WHERE id=?";
	public static final String SELECT_ALL_COMMENT = "SELECT c.*, u.nickname FROM Comment AS c"
			+ "JOIN User AS u ON u.id = c.writer_id "
			+ "WHERE c.post_id=?";
	
	public static final String UPDATE_COMMENT = "UPDATE Comment SET " 
			+ "content=? "
			+ "WHERE id=?";

	public static final String DELETE_COMMENT = "DELETE FROM Comment WHERE id=?";
}
