package kr.co.farmstory.dao;

import kr.co.farmstory.dto.UserDTO;
import kr.co.farmstory.util.DBHelper;
import kr.co.farmstory.util.SqlUser;

public class UserDAO extends DBHelper {
	
	// 싱글톤 객체 생성 - 계속 객체 안만들어서 좋음
	private static UserDAO instance = new UserDAO();
	public static UserDAO getInstance() {
		return instance;
	}
	private UserDAO() {}	
	
	// 회원가입 - 유효성검사 (아이디중복, 이메일인증, 휴대폰 중복 등등: CheckController)
	// 아이디 중복 확인
	public int selectCountId(String id) { 
		int count = 0; 
		
		try { conn = getConnection(); 
		
		psmt = conn.prepareStatement(SqlUser.SELECT_COUNT_ID); 
		psmt.setString(1, id); 
		rs = psmt.executeQuery(); 
		
		if(rs.next()) {			
			count = rs.getInt(1); 
		} 
		
		closeAll(); 
		} catch(Exception e) { 
			e.printStackTrace(); 
			} 
		return count; 
	}
	
	// 별명 중복 확인
	public int selectCountNick(String nick) {

	    int count = 0;

	    try {
	        conn = getConnection();

	        psmt = conn.prepareStatement(SqlUser.SELECT_COUNT_NICK);
	        psmt.setString(1, nick);

	        rs = psmt.executeQuery();

	        if(rs.next()) {
	            count = rs.getInt(1);
	        }

	        closeAll();

	    } catch(Exception e) {
	        e.printStackTrace();
	    }

	    return count;
	}

	// 휴대폰 중복 확인
	public int selectCountPhone(String phone) {

	    int count = 0;

	    try {
	        conn = getConnection();

	        psmt = conn.prepareStatement(SqlUser.SELECT_COUNT_PHONE);
	        psmt.setString(1, phone);

	        rs = psmt.executeQuery();

	        if(rs.next()) {
	            count = rs.getInt(1);
	        }

	        closeAll();

	    } catch(Exception e) {
	        e.printStackTrace();
	    }

	    return count;
	}
	// 회원가입 
	public void insert(UserDTO dto) {
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(SqlUser.INSERT_USER);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPass());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getNick());
			psmt.setString(5, dto.getEmail());
			psmt.setString(6, dto.getZipCode());
			psmt.setString(7, dto.getAddress());
			psmt.setString(8, dto.getDetailAddress());
			psmt.setString(9, dto.getPhone());
			psmt.setString(10, dto.getIpAddress());		
			
			psmt.executeUpdate();
			
			closeAll();
			
			}catch (Exception e) {
				e.printStackTrace();
			}
	}
	
	// 로그인 
	public UserDTO select(String id, String pass) {
		
		UserDTO dto = null;
		
		try {
			conn = getConnection();
			
			psmt = conn.prepareStatement(SqlUser.SELECT_USER);
			psmt.setString(1, id);
			psmt.setString(2, pass);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto = new UserDTO();
				
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setNick(rs.getString("nick"));
				dto.setEmail(rs.getString("email"));
			}
			
			closeAll();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	// 아이디 찾기 
	public String selectId(String name, String email) {
	    
	    String id = null;
	    
	    try {
	        conn = getConnection();

	        psmt = conn.prepareStatement(SqlUser.SELECT_USER_ID);
	        psmt.setString(1, name);
	        psmt.setString(2, email);

	        rs = psmt.executeQuery();

	        if(rs.next()) {
	            id = rs.getString("id");
	        }

	        closeAll();

	    } catch(Exception e) {
	        e.printStackTrace();
	    }

	    return id;
	}
	
}
