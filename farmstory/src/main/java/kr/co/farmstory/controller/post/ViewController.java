package kr.co.farmstory.controller.post;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmstory.dto.CommentDTO;
import kr.co.farmstory.dto.PostDTO;
import kr.co.farmstory.service.CommentService;
import kr.co.farmstory.service.PostService;

@WebServlet("/post/view.do")
public class ViewController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private PostService postService = PostService.getInstance();
	private CommentService commentService = CommentService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String page = req.getParameter("page");
		String id = req.getParameter("id");
		
		postService.increaseViewCount(id);
		
		PostDTO postDTO = postService.findById(id);
		
		List<CommentDTO> commentList = commentService.findAll(id);

		req.setAttribute("page", page);
		req.setAttribute("postDTO", postDTO);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/post/post-view.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
}
