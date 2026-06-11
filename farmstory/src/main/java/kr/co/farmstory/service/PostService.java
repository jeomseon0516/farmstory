package kr.co.farmstory.service;

import java.util.List;

import kr.co.farmstory.dao.PostDAO;
import kr.co.farmstory.dto.PageGroupDTO;
import kr.co.farmstory.dto.PostDTO;

public class PostService {
	private static PostService instance = new PostService();
	private PostService() {}
	public static PostService getInstance() { return instance; }
	
	private PostDAO dao = PostDAO.getInstance();
	
	public int getCurrentPage(String page) {
		return page != null ? Integer.parseInt(page) : 1;
	}
	
	public int getLastPageNum(int total) {
		return (int)Math.ceil(total / 10.0);
	}
	
	public int getOffset(int currentPage) {
		return (currentPage - 1) * 10;
	}
	
	public int getCurrentStartNum(int total, int currentPage) {
		return total - (currentPage - 1) * 10;
	}
	
	public PageGroupDTO getCurrentPageGroup(int currentPage, int lastPageNum) {
		int currentPageGroup = (int)Math.ceil(currentPage / 10.0);
		
		return new PageGroupDTO(
				(currentPageGroup - 1) * 10 + 1, 
				Math.min(currentPageGroup * 10,  lastPageNum));
	}
	
	public int getCount(String category) {
		return dao.selectCount(category);
	}
	
	public int getCountByKeyword(String category, String keyword) {
		return dao.selectCountByKeyword(category, keyword);
	}
	
	public PostDTO findById(String id) {
		PostDTO dto = dao.select(id);
		// 파일 조회
		// 댓글 조회
		
		return dao.select(id);
	}
	
	public List<PostDTO> findAllForList(int offset, String category) {
		return dao.selectAllForList(offset, category);
	}
	
	public List<PostDTO> findAllForListByKeyword(int offset, String category, String keyword) {
		return dao.selectAllForListByKeyword(offset, category, keyword);
	}
	
	public void modify(PostDTO dto) {
		dao.update(dto);
	}
	
	public void increaseViewCount(String id) {
		dao.updateViewCount(id);
	}
	
	public void remove(String id) {
		dao.delete(id);
	}
}
