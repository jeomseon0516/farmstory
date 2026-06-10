package kr.co.farmstory.controller.post;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmstory.dto.PostDTO;
import kr.co.farmstory.service.PostService;

@WebServlet("/post/list.do")
public class ListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	PostService service = PostService.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String keyword = req.getParameter("keyword");
		int start = 0;
		int end = 0;
		
		List<PostDTO> dtoList = keyword == null || keyword.trim().isEmpty() 
				? service.findAll() : service.findAllByKeyword(keyword); 
		
		req.setAttribute("dtoList", dtoList);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/post/post-list.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String reqUri = req.getRequestURI();
	
		
	}
}