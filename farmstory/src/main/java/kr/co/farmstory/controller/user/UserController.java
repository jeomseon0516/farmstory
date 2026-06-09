package kr.co.farmstory.controller.user;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {
					        "/user/login.do",					        
					        "/user/register.do",
					        "/user/find/id.do",
					        "/user/find/id-result.do",
					        "/user/find/password.do",
					        "/user/find/password-change.do",
					        "/mypage/profile-edit.do"
							})

public class UserController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
	    String path = req.getServletPath();

	    if(path.equals("/user/login.do")) {

	        RequestDispatcher dispatcher =
	                req.getRequestDispatcher("/WEB-INF/views/user/login.jsp");

	        dispatcher.forward(req, resp);

	    } else if(path.equals("/user/register.do")) {

	        RequestDispatcher dispatcher =
	                req.getRequestDispatcher("/WEB-INF/views/user/register.jsp");

	        dispatcher.forward(req, resp);

	    } else if(path.equals("/user/find/id.do")) {

	        RequestDispatcher dispatcher =
	                req.getRequestDispatcher("/WEB-INF/views/user/find/id.jsp");

	        dispatcher.forward(req, resp);
	        
	    } else if(path.equals("/user/find/password.do")) {

	        RequestDispatcher dispatcher =
	                req.getRequestDispatcher("/WEB-INF/views/user/find/password.jsp");

	        dispatcher.forward(req, resp);    
	        
	    } else if(path.equals("/user/find/password-change.do")) {

	        RequestDispatcher dispatcher =
	                req.getRequestDispatcher("/WEB-INF/views/user/find/password-change.jsp");

	        dispatcher.forward(req, resp);  

	    } else if(path.equals("/mypage/profile-edit.do")) {

	        RequestDispatcher dispatcher =
	                req.getRequestDispatcher("/WEB-INF/views/mypage/profile-edit.jsp");

	        dispatcher.forward(req, resp);
	     
	    } else if(path.equals("/user/find/id-result.do")) {

	        RequestDispatcher dispatcher =
	                req.getRequestDispatcher("/WEB-INF/views/user/find/id-result.jsp");

	        dispatcher.forward(req, resp);
	        
	    }
	}
	

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	}
}
