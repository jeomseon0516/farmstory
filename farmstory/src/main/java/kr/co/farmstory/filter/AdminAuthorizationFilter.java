package kr.co.farmstory.filter;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.farmstory.dto.UserDTO;

@WebFilter("/admin/*")
public class AdminAuthorizationFilter implements Filter {
	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
		// 로그인 확인
		HttpServletRequest request = (HttpServletRequest) req;

		// 권한 처리를 위해 로그인 정보 Session
		HttpSession session = request.getSession();

		// 로그인이 필요한 권한 처리

		if (session.getAttribute("sessUser") instanceof UserDTO userDTO && 
			userDTO.getRole() == "ADMIN") {
			return;
		}

		// 로그인 페이지 이동
		((HttpServletResponse) resp).sendRedirect("/farmstory/main/main.do");
	}
}
