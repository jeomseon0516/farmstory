package kr.co.farmstory.controller.user;

import java.io.IOException;
import java.io.PrintWriter;

import com.google.gson.JsonObject;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmstory.service.UserService;

@WebServlet("/user/check.do")
public class CheckController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private UserService service = UserService.INSTANCE;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String type = req.getParameter("type");
        String value = req.getParameter("value");

        int count = 0;

        if("id".equals(type)) {
            count = service.checkId(value);

        } else if("nickname".equals(type)) {
            count = service.checkNick(value);

        } else if("phone".equals(type)) {
            count = service.checkPhone(value);
        }

        JsonObject json = new JsonObject();
        json.addProperty("count", count);

        resp.setContentType("application/json; charset=UTF-8");

        PrintWriter writer = resp.getWriter();
        writer.print(json.toString());
    }
}