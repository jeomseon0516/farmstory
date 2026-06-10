package kr.co.farmstory.controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
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
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		TermsDAO dao = TermsDAO.getInstance();
		TermsDTO terms = dao.selectTerms();

		req.setAttribute("terms", terms);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/terms.jsp");
		dispatcher.forward(req, resp);
	}
}