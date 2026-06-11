package kr.co.farmstory.controller.post;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmstory.dto.PageGroupDTO;
import kr.co.farmstory.dto.PostDTO;
import kr.co.farmstory.service.PostService;

@WebServlet("/post/list.do")
public class ListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	PostService service = PostService.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String category = req.getParameter("category");
		String page = req.getParameter("page");
		String keyword = req.getParameter("keyword");
		boolean hasKeyword = keyword != null && !keyword.trim().isEmpty();
		
		List<PostDTO> dtoList = null;
		int total = hasKeyword 
				? service.getCountByKeyword(category, keyword) 
				: service.getCount(category);
		
		int currentPage = service.getCurrentPage(page);
		int lastPageNum = service.getLastPageNum(total);
		
		PageGroupDTO pageGroupDTO = service.getCurrentPageGroup(currentPage, lastPageNum);
		
		int pageStart = service.getCurrentStartNum(total, currentPage);
		int offset = service.getOffset(currentPage);
		
		dtoList = hasKeyword 
				? service.findAllForListByKeyword(offset, category, keyword) 
				: service.findAllForList(offset, category);
		
		req.setAttribute("dtoList", dtoList);
		req.setAttribute("total", total);
		req.setAttribute("lastPageNum", lastPageNum);
		req.setAttribute("currentPage", currentPage);
		req.setAttribute("pageStart", pageStart);
		req.setAttribute("pageGroupDTO", pageGroupDTO);
		req.setAttribute("keyword", keyword);
		req.setAttribute("category", category);
		
		System.out.println(dtoList);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/post/post-list.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		
	}
}