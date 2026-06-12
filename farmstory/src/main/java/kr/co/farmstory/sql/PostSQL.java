package kr.co.farmstory.sql;

public class PostSQL {
	public static final String SELECT_ALL_FOR_LIST = "SELECT "
			+ "p.id, "
			+ "p.title, "
			+ "p.writer_id, "
			+ "p.category, "
			+ "p.view_count, "
			+ "p.written_at, "
			+ "u.nickname, "
			+ "COUNT(c.id) "
			+ "FROM Post AS p "
			+ "JOIN User AS u ON p.writer_id = u.id "
			+ "LEFT JOIN Comment AS c ON p.id = c.post_id "
			+ "WHERE p.category=? "
			+ "GROUP BY p.id "
			+ "ORDER BY p.id DESC "
			+ "LIMIT ?, 10";
	
	public static final String SELECT_ALL_FOR_LIST_SEARCH = "SELECT "
			+ "p.id, "
			+ "p.title, "
			+ "p.writer_id, "
			+ "p.category, "
			+ "p.view_count, "
			+ "p.written_at, "
			+ "u.nickname, "
			+ "COUNT(c.id) "
			+ "FROM Post AS p "
			+ "JOIN User AS u ON p.writer_id = u.id "
			+ "LEFT JOIN Comment AS c ON p.id = c.post_id "
			+ "WHERE p.category=? "
			+ "AND (p.title LIKE ? OR u.nickname LIKE ?) "
			+ "GROUP BY p.id "
			+ "ORDER BY p.id DESC "
			+ "LIMIT ?, 10";
	
	public static final String SELECT_COUNT = "SELECT COUNT(id) FROM Post WHERE category=?";
	
	public static final String SELECT_COUNT_BY_KEYWORD = "SELECT COUNT(p.id) FROM Post AS p "
			+ "JOIN User AS u ON p.writer_id = u.id "
			+ "WHERE p.category=? "
			+ "AND (p.title LIKE ? OR u.nickname LIKE ?)";
	
	public static final String SELECT = "SELECT p.*, u.nickname FROM Post AS p "
			+ "JOIN User AS u ON p.writer_id = u.id " 
			+ "WHERE p.id=?";
	
	public static final String INSERT = "INSERT INTO Post SET "
			+ "writer_id=?,"
			+ "category=?,"
			+ "title=?,"
			+ "content=?,"
			+ "ip_address=?";
	
	public static final String INCREASE_VIEW_COUNT = "UPDATE Post SET "
			+ "view_count=view_count+1 "
			+ "WHERE id=?";
	
	public static final String UPDATE = "UPDATE Post SET "
			+ "title=?,"
			+ "content=? "
			+ "WHERE id=?";
	
	public static final String DELETE = "DELETE FROM Post WHERE id=?";
}
