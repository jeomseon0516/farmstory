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
	public int selectCountNickname(String nickname) {

	    int count = 0;

	    try {
	        conn = getConnection();

	        psmt = conn.prepareStatement(SqlUser.SELECT_COUNT_NICKNAME);
	        psmt.setString(1, nickname);

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
		
		System.out.println("==회원가입DAO진입==");
		System.out.println("dto");
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(SqlUser.INSERT_USER);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPass());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getNickname());
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
	public UserDTO select(String id, String password) {
		
		UserDTO dto = null;
		
		try {
			conn = getConnection();
			
			psmt = conn.prepareStatement(SqlUser.SELECT_USER);
			psmt.setString(1, id);
			psmt.setString(2, password);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto = new UserDTO();
				
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setNickname(rs.getString("nickname"));
				dto.setEmail(rs.getString("email"));
				dto.setPhone(rs.getString("phone"));
			    dto.setZipCode(rs.getString("zip_code"));
			    dto.setAddress(rs.getString("address"));
			    dto.setDetailAddress(rs.getString("detail_address"));
				dto.setCreatedAt(rs.getString("created_at"));
			}
			
			closeAll();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	// 아이디 찾기 
	public UserDTO selectId(String name, String email) {
	    
	    UserDTO dto = null;
	    
	    try {
	        conn = getConnection();

	        psmt = conn.prepareStatement(SqlUser.SELECT_USER_ID);
	        psmt.setString(1, name);
	        psmt.setString(2, email);

	        rs = psmt.executeQuery();

	        if(rs.next()) {
	            dto = new UserDTO();

	            dto.setId(rs.getString("id"));
	            dto.setName(rs.getString("name"));
	            dto.setEmail(rs.getString("email"));
	            dto.setCreatedAt(rs.getString("created_at"));
	        }

	        closeAll();

	    } catch(Exception e) {
	        e.printStackTrace();
	    }

	    return dto;
	}
	
	// 비밀번호 찾기
	public UserDTO selectUserForPassword(String id, String email) {

	    UserDTO dto = null;

	    try {
	        conn = getConnection();

	        psmt = conn.prepareStatement(SqlUser.SELECT_USER_PASSWORD);
	        psmt.setString(1, id);
	        psmt.setString(2, email);

	        rs = psmt.executeQuery();

	        if(rs.next()) {

	            dto = new UserDTO();

	            dto.setId(rs.getString("id"));
	            dto.setEmail(rs.getString("email"));
	            dto.setName(rs.getString("name"));
	        }

	        closeAll();

	    } catch(Exception e) {
	        e.printStackTrace();
	    }

	    return dto;
	}
	
	// 비밀번호 변경
	public void updatePassword(String id, String password) {

	    try {
	        conn = getConnection();

	        psmt = conn.prepareStatement(SqlUser.UPDATE_USER_PASSWORD);
	        psmt.setString(1, password);
	        psmt.setString(2, id);

	        psmt.executeUpdate();

	        closeAll();

	    } catch(Exception e) {
	        e.printStackTrace();
	    }
	}
	
	// 회원정보 수정
	public void updateUserProfile(UserDTO dto) {

	    try {
	        conn = getConnection();

	        psmt = conn.prepareStatement(SqlUser.UPDATE_USER_PROFILE);
	        psmt.setString(1, dto.getName());
	        psmt.setString(2, dto.getNickname());
	        psmt.setString(3, dto.getEmail());
	        psmt.setString(4, dto.getPhone());
	        psmt.setString(5, dto.getZipCode());
	        psmt.setString(6, dto.getAddress());
	        psmt.setString(7, dto.getDetailAddress());
	        psmt.setString(8, dto.getId());

	        psmt.executeUpdate();
	        
	        closeAll();

	    } catch (Exception e) {
	        e.printStackTrace();
	    }   
	    
	}
	
	
}
