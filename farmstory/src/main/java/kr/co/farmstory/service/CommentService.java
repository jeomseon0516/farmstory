package kr.co.farmstory.service;

import java.util.List;

import kr.co.farmstory.dao.CommentDAO;
import kr.co.farmstory.dto.CommentDTO;

public enum CommentService {
	INSTANCE;
	
	private CommentDAO dao = CommentDAO.getInstance();
	
	public void register(CommentDTO dto) {
		dao.insert(dto);
	}
	
	public CommentDTO findById(String cno) {
		return dao.select(cno);
	}
	
	public List<CommentDTO> findAll(String parent) {
		return dao.selectAll(parent);
	}
	
	public void modify(CommentDTO dto) {
		dao.update(dto);
	}
	
	public void remove(String cno) {
		dao.delete(cno);
	}
}
