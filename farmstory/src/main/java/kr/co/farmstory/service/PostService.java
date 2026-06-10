package kr.co.farmstory.service;

import kr.co.farmstory.dao.PostDAO;
import kr.co.farmstory.dto.PostDTO;

public class PostService {
	private static PostService instance = new PostService();
	private PostService() {}
	public static PostService getInstance() { return instance; }
	
	private PostDAO postDAO = PostDAO.getInstance();
	
	public PostDTO findById(String id) {
		return postDAO.select(id);		
	}
}
