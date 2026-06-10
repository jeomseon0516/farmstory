package kr.co.farmstory.controller.user;
import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.farmstory.dto.UserDTO;
import kr.co.farmstory.service.UserService;

@WebServlet(urlPatterns = {"/user/login.do"})

public class LoginController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	// dopost -> DAO 보내줄 때 Service 에서 쓸 객체 가져오기
	private UserService service = UserService.INSTANCE;	
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	        throws ServletException, IOException {	

	    RequestDispatcher dispatcher = 
	    		req.getRequestDispatcher("/WEB-INF/views/user/login.jsp");
	    dispatcher.forward(req, resp);
	 }
	
	    
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	    String id = req.getParameter("id");
	    String pass = req.getParameter("pass");

	    UserDTO user = service.login(id, pass);

    	if(user != null) {
	        HttpSession session = req.getSession();
	        session.setAttribute("sessUser", user);

	        resp.sendRedirect("/farmstory/main/main.do?login=success");
    	        
	    } else {   	        
	        resp.sendRedirect("/farmstory/user/login.do?login=fail");
	    }    	 
    }	    
}

