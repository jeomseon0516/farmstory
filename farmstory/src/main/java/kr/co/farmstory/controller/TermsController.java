package kr.co.farmstory.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmstory.dao.TermsDAO;
import kr.co.farmstory.dto.TermsDTO;

@WebServlet("/user/terms.do")
public class TermsController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request,
						 HttpServletResponse response)
			throws ServletException, IOException {
		
		TermsDAO dao = new TermsDAO();
		
		TermsDTO dto = dao.select(1);
		
		request.setAttribute("dto", dto);

		request.getRequestDispatcher("/WEB-INF/user/terms.jsp")
			   .forward(request, response);
	}
	
}
