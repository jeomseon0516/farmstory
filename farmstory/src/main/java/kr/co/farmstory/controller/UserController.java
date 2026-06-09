package kr.co.farmstory.controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmstory.dto.UserDTO;
import kr.co.farmstory.service.UserService;

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
	
	// dopost -> DAO 보내줄 때 Service 에서 쓸 객체 가져오기
	private UserService service = UserService.INSTANCE;	
	
	
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
	
		
		
		String id = req.getParameter("id");
		String pass = req.getParameter("pass");
		String name = req.getParameter("name");
		String nick = req.getParameter("nick");
		String email = req.getParameter("email");
		String zipCode = req.getParameter("zipCode");
		String address = req.getParameter("address");
		String detailAddress = req.getParameter("detailAddress");
		String phone = req.getParameter("phone");
		String ipAddress = req.getRemoteAddr();
		
		UserDTO dto = new UserDTO();
		
	    dto.setId(id);
	    dto.setPass(pass);
	    dto.setName(name);
	    dto.setNick(nick);
	    dto.setEmail(email);
	    dto.setZipCode(zipCode);
	    dto.setAddress(address);
	    dto.setDetailAddress(detailAddress);
	    dto.setPhone(phone);
	    dto.setIpAddress(ipAddress);
	    
	    // 서비스 호출
	    service.register(dto);

	    resp.sendRedirect("/farmstory/user/login.do?+register=success");
	}
}
