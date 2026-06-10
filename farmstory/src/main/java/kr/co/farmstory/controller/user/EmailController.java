package kr.co.farmstory.controller.user;

import java.io.IOException;

import com.google.gson.JsonObject;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.farmstory.service.EmailService;

@WebServlet("/user/email.do")
public class EmailController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private EmailService service = EmailService.INSTANCE;

    /*
     * 이메일 인증코드 전송
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String email = req.getParameter("email");

        // 인증코드 생성 + 이메일 전송
        String code = service.sendEmailCode(email);

        System.out.println("이메일 인증 요청 email : " + email);
        
        // 인증코드 세션 저장
        HttpSession session = req.getSession();
        session.setAttribute("sessCode", code);

        // 결과 JSON 생성
        JsonObject json = new JsonObject();
        json.addProperty("result", true);

        // JSON 전송
        resp.setContentType("application/json; charset=UTF-8");
        resp.getWriter().print(json.toString());
    }

    /*
     * 이메일 인증코드 확인
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String code = req.getParameter("code");

        HttpSession session = req.getSession();
        String sessCode = (String) session.getAttribute("sessCode");

        JsonObject json = new JsonObject();

        if(sessCode != null && sessCode.equals(code)) {
            json.addProperty("count", 0); // 인증완료
        } else {
            json.addProperty("count", 1); // 인증코드 불일치
        }

        resp.setContentType("application/json; charset=UTF-8");
        resp.getWriter().print(json.toString());
    }
}