package kr.co.farmstory.controller.post;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmstory.dto.FileDTO;
import kr.co.farmstory.dto.PostDTO;
import kr.co.farmstory.dto.PostFileDTO;
import kr.co.farmstory.service.FileService;
import kr.co.farmstory.service.PostFileService;
import kr.co.farmstory.service.PostService;

@WebServlet("/post/write.do")
public class WriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private PostService postService = PostService.getInstance();
	private PostFileService postFileService = PostFileService.INSTANCE;
	private FileService fileService = FileService.INSTANCE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/post/post-write.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String category = req.getParameter("category");
		String menu = req.getParameter("menu");
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String writer = req.getParameter("writerId");
		String ipAddress = req.getRemoteAddr();
		
		List<FileDTO> fileList = fileService.upload(req);
		
		PostDTO postDTO = new PostDTO();
		postDTO.setTitle(title);
		postDTO.setCategory(category);
		postDTO.setWriterId(writer);
		postDTO.setContent(content);
		postDTO.setIpAddress(ipAddress);
		
		int postId = postService.register(postDTO);
		
		for(FileDTO fileDTO : fileList) {
			PostFileDTO postFileDTO = new PostFileDTO();
			postFileDTO.setPostId(postId);
			postFileDTO.setFileId(fileService.register(fileDTO));
			postFileService.register(postFileDTO);
		}
		
		resp.sendRedirect("/farmstory/post/list.do?menu=" 
			+ menu + 
			"&category=" 
			+ category + 
			"&write=success");
	}
}
