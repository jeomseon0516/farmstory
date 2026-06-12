package kr.co.farmstory.service;

import kr.co.farmstory.dao.UserDAO;
import kr.co.farmstory.dto.UserDTO;

import java.util.List;


public enum UserService {
	
	// 싱글톤! 
	INSTANCE;
	
	// DAO 싱글톤 한거 가져오기
	private UserDAO dao = UserDAO.getInstance();
	
	//회원가입 : 유효성 검사에 사용할  것
	public int checkId(String id) {
	    return dao.selectCountId(id);
	}

	// 별명 중복 확인
	public int checkNick(String nickname) {
	    return dao.selectCountNickname(nickname);
	}

	// 휴대폰 중복 확인
	public int checkPhone(String phone) {
	    return dao.selectCountPhone(phone);
	}
	
	
	
	//회원가입 : DAO 호출 서비스 메서드
	public void register(UserDTO dto) {
		dao.insert(dto);
	}
	
	//로그인 : DAO가 호출한 서비스 메서드
	public UserDTO login(String id, String pass) {
		return dao.select(id, pass);
	}
	
	//아이디 찾기 : DAO가 호출한 서비스 메서드
	public UserDTO findId(String name, String email) {
	    return dao.selectId(name, email);
	}
	// 비밀번호 찾기 : DAO가 호출한 서비스 메서드
	public UserDTO findPassword(String id, String email) {
	    return dao.selectUserForPassword(id, email);
	}

	// 비밀번호 변경 : DAO가 호출한 서비스 메서드
	public void changePassword(String id, String pass) {
	    dao.updatePassword(id, pass);
	}
	
	// 회원정보 수정 : DAO 호출 서비스 메서드
	public void updateUserProfile(UserDTO dto) {
	    dao.updateUserProfile(dto);
	}
	
	// 전체 회원 목록 조회 - 관리자 메인 회원현황용
	public List<UserDTO> findAll() {
	    return dao.selectAll();

	}
	
}
