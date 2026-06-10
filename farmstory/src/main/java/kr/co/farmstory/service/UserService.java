package kr.co.farmstory.service;

import kr.co.farmstory.dao.UserDAO;
import kr.co.farmstory.dto.UserDTO;

public enum UserService {
	
	// 싱글톤! 
	INSTANCE;
	
	// DAO 싱글톤 한거 가져오기
	private UserDAO dao = UserDAO.getInstance();
	
	//회원가입 : DAO 호출 서비스 메서드
	public void register(UserDTO dto) {
		dao.insert(dto);
	}
	
	//로그인 : DAO가 호출한 서비스 메서드
	public UserDTO login(String id, String pass) {
		return dao.select(id, pass);
	}

}
