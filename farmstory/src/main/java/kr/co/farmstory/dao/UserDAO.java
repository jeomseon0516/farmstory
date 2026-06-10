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
	
	
	// 회원가입 
	public void insert(UserDTO dto) {
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(SqlUser.INSERT_USER);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPassword());
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
}
