package kr.co.farmstory.controller.user;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmstory.dto.UserDTO;
import kr.co.farmstory.service.UserService;

@WebServlet("/mypage/profile-edit.do")
public class ProfileEditController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private UserService service = UserService.INSTANCE;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/mypage/profile-edit.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");

        String mode = req.getParameter("mode");
        String id = req.getParameter("id");

        if("profile".equals(mode)) {

            UserDTO dto = new UserDTO();

            dto.setId(id);
            dto.setName(req.getParameter("name"));
            dto.setNickname(req.getParameter("nickname"));
            dto.setEmail(req.getParameter("email"));
            dto.setPhone(req.getParameter("phone"));
            dto.setZipCode(req.getParameter("zipCode"));
            dto.setAddress(req.getParameter("address"));
            dto.setDetailAddress(req.getParameter("detailAddress"));

            service.updateUserProfile(dto);

            resp.sendRedirect("/farmstory/mypage/profile-edit.do?success=1");

        } else if("pass".equals(mode)) {

            String pass1 = req.getParameter("pass1");
            String pass2 = req.getParameter("pass2");

            if(pass1 != null && pass1.equals(pass2)) {
                service.changePassword(id, pass1);
                resp.sendRedirect("/farmstory/mypage/profile-edit.do?passSuccess=1");
            } else {
                resp.sendRedirect("/farmstory/mypage/profile-edit.do?passFail=1");
            }

        } else if("withdraw".equals(mode)) {

            resp.sendRedirect("/farmstory/mypage/profile-edit.do");
        }
    }
}