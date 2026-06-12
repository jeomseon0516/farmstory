package kr.co.farmstory.controller.admin;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import kr.co.farmstory.dto.UserDTO;
import kr.co.farmstory.service.UserService;

@WebServlet("/admin/userList.do")
public class AdminUserListController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		UserService service = UserService.INSTANCE;

		List<UserDTO> users = service.findAll();

		req.setAttribute("users", users);

		RequestDispatcher dispatcher =
				req.getRequestDispatcher("/WEB-INF/views/admin/user-list/user-list.jsp");

		dispatcher.forward(req, resp);
	}
}