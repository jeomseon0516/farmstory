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

@WebServlet("/user/register.do")

public class RegisterController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	// dopost -> DAO 보내줄 때 Service 에서 쓸 객체 가져오기
	private UserService service = UserService.INSTANCE;	
	
	
	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        RequestDispatcher dispatcher =
                req.getRequestDispatcher("/WEB-INF/views/user/register.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        UserDTO dto = new UserDTO();

        dto.setId(req.getParameter("id"));
        dto.setPass(req.getParameter("pass"));
        dto.setName(req.getParameter("name"));
        dto.setNick(req.getParameter("nick"));
        dto.setEmail(req.getParameter("email"));
        dto.setZipCode(req.getParameter("zipCode"));
        dto.setAddress(req.getParameter("address"));
        dto.setDetailAddress(req.getParameter("detailAddress"));
        dto.setPhone(req.getParameter("phone"));
        dto.setIpAddress(req.getRemoteAddr());

        service.register(dto);

        resp.sendRedirect("/farmstory/user/login.do?register=success");
    }
}
    	 
    	