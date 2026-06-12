package kr.co.farmstory.controller.admin;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import kr.co.farmstory.dto.OrderDTO;
import kr.co.farmstory.service.OrderService;

@WebServlet("/admin/orderList.do")
public class AdminOrderListController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		OrderService service = OrderService.INSTANCE;

		List<OrderDTO> orders = service.findAll();

		req.setAttribute("orders", orders);

		RequestDispatcher dispatcher =
				req.getRequestDispatcher("/WEB-INF/views/admin/order-list/order-list.jsp");

		dispatcher.forward(req, resp);
	}
}