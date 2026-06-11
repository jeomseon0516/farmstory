package kr.co.farmstory.util;

public class SqlUser {
	
	//회원가입: 중복검사 등등 유효성검사
	public static final String SELECT_COUNT_ID =
	        "SELECT COUNT(*) FROM User WHERE id=?";

	public static final String SELECT_COUNT_NICK =
	        "SELECT COUNT(*) FROM User WHERE nick=?";

	public static final String SELECT_COUNT_EMAIL =
	        "SELECT COUNT(*) FROM User WHERE email=?";

	public static final String SELECT_COUNT_PHONE =
	        "SELECT COUNT(*) FROM User WHERE phone=?";
	
	//회원가입
	public static final String INSERT_USER = "INSERT INTO `User` SET "
													      + "id=?, "
													      + "pass=SHA2(?, 256), "
													      + "name=?, "
													      + "nickname=?, "
													      + "email=?, "
													      + "zip_code=?, "
													      + "address=?, "
													      + "detail_address=?, "
													      + "phone=?, "
													      + "created_at=NOW(), "
													      + "deleted_at=NULL, "
													      + "ip_address=?";
	
	
	// 로그인
	public static final String SELECT_USER = "SELECT * FROM `User` "
													      + "WHERE id=? "
													      + "AND pass=SHA2(?,256)";
	
	//아이디 찾기
	public static final String SELECT_USER_ID = "SELECT id FROM user "
													      + "WHERE name=? "
													      + "AND email=?";
	
	}


