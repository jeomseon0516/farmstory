package kr.co.farmstory.service;

import java.util.List;

import kr.co.farmstory.dao.PointDAO;
import kr.co.farmstory.dto.PointDTO;

public enum PointService {

	INSTANCE;
	
	private PointDAO dao = PointDAO.getInstance();
	
    // C - 포인트 로그 등록
    public void insert(PointDTO dto) {
    	dao.insert(dto);
    }

    // R - 특정 회원의 포인트 로그 목록 조회
    public List<PointDTO> selectAll(String userId) {
        return dao.selectAll(userId);
    }

    // R - 포인트 로그 1건 조회
    public PointDTO select(int id) {
        return dao.select(id);
    }

}