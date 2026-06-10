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

@WebServlet(urlPatterns = {"/user/find/id.do",
					       "/user/find/id-result.do",
					       "/user/find/password.do",
					       "/user/find/password-change.do",
					       })

public class FindController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	// dopost -> DAO 보내줄 때 Service 에서 쓸 객체 가져오기
	private UserService service = UserService.INSTANCE;	
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	        throws ServletException, IOException {

	    String path = req.getServletPath();
	    String view = null;

	    if(path.equals("/user/find/id.do")) {
	        view = "/WEB-INF/views/user/find/id.jsp";

	    } else if(path.equals("/user/find/id-result.do")) {
	        view = "/WEB-INF/views/user/find/id-result.jsp";

	    } else if(path.equals("/user/find/password.do")) {
	        view = "/WEB-INF/views/user/find/password.jsp";

	    } else if(path.equals("/user/find/password-change.do")) {
	        view = "/WEB-INF/views/user/find/password-change.jsp";

	    
	    RequestDispatcher dispatcher = req.getRequestDispatcher(view);
	    dispatcher.forward(req, resp);
	    }
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	    String path = req.getServletPath();

	    
    	// 아이디 찾기    
	    if(path.equals("/user/find/id.do")) {

	        String name = req.getParameter("name");
	        String email = req.getParameter("email");

	        String foundId = service.findId(name, email);

	        req.setAttribute("foundId", foundId);

	        RequestDispatcher dispatcher =
	        req.getRequestDispatcher("/WEB-INF/views/user/find/id-result.jsp");

	        dispatcher.forward(req, resp);
	    }
	}		
}
