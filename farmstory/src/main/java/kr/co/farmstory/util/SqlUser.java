package kr.co.farmstory.util;

public class SqlUser {
	
	//회원가입: 중복검사 등등 유효성검사
	public static final String SELECT_COUNT_ID =
	        "SELECT COUNT(*) FROM User WHERE id=?";

	public static final String SELECT_COUNT_NICKNAME =
	        "SELECT COUNT(*) FROM User WHERE nickname=?";

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
	public static final String SELECT_USER_ID = "SELECT * FROM `User` "
														  + "WHERE name=? "
														  + "AND email=?";
	
	// 비밀번호 찾기 - 아이디/이메일 일치 회원 조회
	public static final String SELECT_USER_PASSWORD = "SELECT * FROM `User` "
													      + "WHERE id=? "
													      + "AND email=?";

	// 비밀번호 변경
	public static final String UPDATE_USER_PASSWORD = "UPDATE `User` SET "
													      + "pass=SHA2(?, 256) "
													      + "WHERE id=?";
	
	
	
	}


