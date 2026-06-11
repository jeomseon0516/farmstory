package kr.co.farmstory.service;

import java.util.List;

import kr.co.farmstory.dao.PostFileDAO;
import kr.co.farmstory.dto.PostFileDTO;
import kr.co.farmstory.service.FileService;

public enum PostFileService {
	INSTANCE;
	
	private PostFileDAO dao = PostFileDAO.INSTANCE;
	
	public void register(PostFileDTO dto) {
		dao.insert(dto);
	}
	
	public List<PostFileDTO> findByPostId(String postId) {
		List<PostFileDTO> files = dao.selectByPostId(postId);
		if (files != null) {
			for (PostFileDTO dto : files) {
				dto.setFile(FileService.INSTANCE.findById(String.valueOf(dto.getFileId())));
			}
		}
		return files;
	}
	
	public void deleteByPostId(String postId) {
		dao.deleteByPostId(postId);
	}
	
	public void increaseDownloadCount(String id) {
		dao.increaseDownloadCount(id);
	}
}
