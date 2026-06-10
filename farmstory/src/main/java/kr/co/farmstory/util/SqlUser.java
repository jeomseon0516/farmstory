package kr.co.farmstory.util;

public class SqlUser {
	
	public static final String INSERT_USER = "INSERT INTO `User` SET "
													      + "id=?, "
													      + "pass=SHA2(?, 256), "
													      + "name=?, "
													      + "nick=?, "
													      + "email=?, "
													      + "zip_code=?, "
													      + "address=?, "
													      + "detail_address=?, "
													      + "phone=?, "
													      + "created_at=NOW(), "
													      + "deleted_at=NULL, "
													      + "ip_address=?";
	
	
	public static final String SELECT_USER = "SELECT * FROM `User` "
													      + "WHERE id=? "
													      + "AND pass=SHA2(?,256)";
	
	}


