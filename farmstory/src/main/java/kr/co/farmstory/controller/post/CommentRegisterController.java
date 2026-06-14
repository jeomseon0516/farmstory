package kr.co.farmstory.controller.post;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmstory.dto.CommentDTO;
import kr.co.farmstory.dto.UserDTO;
import kr.co.farmstory.service.AuthenticationService;
import kr.co.farmstory.service.CommentService;

@WebServlet("/post/commentRegister.do")
public class CommentRegisterController extends HttpServlet {
	
	AuthenticationService authService = AuthenticationService.INSTANCE;
	CommentService commentService = CommentService.INSTANCE;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String content = req.getParameter("content");
		String postId = req.getParameter("postId");
		
		UserDTO userDTO = authService.getLoginUser(req);
		
		if (userDTO == null) {
			resp.sendRedirect("/farmstory/user/login.do");
			return;
		}
		
		CommentDTO dto = new CommentDTO();
		dto.setWriterId(userDTO.getId());
		dto.setPostId(Integer.parseInt(postId));
		dto.setContent(content);
		dto.setIpAddress(req.getRemoteAddr());
		
		commentService.register(dto);
		resp.sendRedirect("/farmstory/post/view.do?id=" + postId);
	}
}
