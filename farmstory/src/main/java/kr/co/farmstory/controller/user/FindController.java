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

@WebServlet(urlPatterns = {
        "/user/find/id.do",
        "/user/find/id-result.do",
        "/user/find/password.do",
        "/user/find/password-change.do"
})
public class FindController extends HttpServlet {

    private static final long serialVersionUID = 1L;

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
        }

        RequestDispatcher dispatcher = req.getRequestDispatcher(view);
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String path = req.getServletPath();

        if(path.equals("/user/find/id.do")) {

            String name = req.getParameter("name");
            String email = req.getParameter("email");
            String code = req.getParameter("code");

            HttpSession session = req.getSession();

            String sessionCode = (String) session.getAttribute("sessCode");

            if(sessionCode != null && sessionCode.equals(code)) {

            	UserDTO foundUser = service.findId(name, email);
            	System.out.println(foundUser);
            	session.setAttribute("foundUser", foundUser);

                resp.sendRedirect(req.getContextPath() + "/user/find/id-result.do");

            } else {

                req.setAttribute("message", "인증번호가 일치하지 않습니다.");

                RequestDispatcher dispatcher =
                        req.getRequestDispatcher("/WEB-INF/views/user/find/id.jsp");

                dispatcher.forward(req, resp);
            }
            
        // 비밀번호 찾기
        } else if(path.equals("/user/find/password.do")) {

            String id = req.getParameter("id");
            String email = req.getParameter("email");
            String code = req.getParameter("code");

            HttpSession session = req.getSession();

            String sessionCode = (String) session.getAttribute("sessCode");

            if(sessionCode != null && sessionCode.equals(code)) {

                UserDTO foundUser = service.findPassword(id, email);

                if(foundUser != null) {
                    session.setAttribute("foundUser", foundUser);

                    resp.sendRedirect(req.getContextPath() + "/user/find/password-change.do");

                } else {
                    req.setAttribute("message", "일치하는 회원이 없습니다.");

                    RequestDispatcher dispatcher =
                            req.getRequestDispatcher("/WEB-INF/views/user/find/password.jsp");

                    dispatcher.forward(req, resp);
                }

            } else {
                req.setAttribute("message", "인증번호가 일치하지 않습니다.");

                RequestDispatcher dispatcher =
                        req.getRequestDispatcher("/WEB-INF/views/user/find/password.jsp");

                dispatcher.forward(req, resp);
            }
        }

        // 비밀번호 변경
        else if(path.equals("/user/find/password-change.do")) {

            String pass = req.getParameter("pass");

            HttpSession session = req.getSession();
            UserDTO foundUser = (UserDTO) session.getAttribute("foundUser");

            if(foundUser != null) {

            	service.changePassword(foundUser.getId(), pass);

            	session.removeAttribute("foundUser");

            	session.setAttribute("successMessage", "비밀번호가 변경되었습니다.");

            	resp.sendRedirect(req.getContextPath() + "/user/login.do");

            } else {
                resp.sendRedirect(req.getContextPath() + "/user/find/password.do");
            }
        }
    }
}