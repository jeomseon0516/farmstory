package kr.co.farmstory.sql;

public class FileSQL {
	public static final String SELECT = "SELECT * FROM File WHERE id=?";

	public static final String INSERT = "INSERT INTO File SET "
			+ "original_name=?,"
			+ "stored_name=?";
	
	public static final String DELETE = "DELETE FROM File WHERE id=?";
}
