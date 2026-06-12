package kr.co.farmstory.controller.admin;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import kr.co.farmstory.dto.ProductDTO;
import kr.co.farmstory.dto.OrderDTO;
import kr.co.farmstory.dto.UserDTO;

import kr.co.farmstory.service.ProductService;
import kr.co.farmstory.service.OrderService;
import kr.co.farmstory.service.UserService;

@WebServlet("/admin/dashboard.do")
public class AdminDashboardController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 상품현황
		ProductService productService = ProductService.INSTANCE;
		List<ProductDTO> products = productService.findAll();
		req.setAttribute("products", products);

		// 주문현황
		OrderService orderService = OrderService.INSTANCE;
		List<OrderDTO> orders = orderService.findAll();
		req.setAttribute("orders", orders);

		// 회원현황
		UserService userService = UserService.INSTANCE;
		List<UserDTO> users = userService.findAll();
		req.setAttribute("users", users);

		RequestDispatcher dispatcher =
				req.getRequestDispatcher("/WEB-INF/views/admin/dashboard/dashboard.jsp");

		dispatcher.forward(req, resp);
	}
}