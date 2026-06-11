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
import kr.co.farmstory.service.AuthenticationService;
import kr.co.farmstory.service.AuthorizationService;

@WebFilter("/admin/*")
public class AdminAuthorizationFilter implements Filter {

	AuthenticationService authenticationService = AuthenticationService.INSTANCE;
	AuthorizationService authorizationService = AuthorizationService.INSTANCE;

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {

		// 로그인 확인
		HttpServletRequest request = (HttpServletRequest) req;

		// 로그인이 필요한 권한 처리
		if (authorizationService.isAdmin(authenticationService.getLoginUser(request))) {
			chain.doFilter(req, resp);
			return;
		}

		// 로그인 페이지 이동
		((HttpServletResponse) resp).sendRedirect("/farmstory/main/main.do");
	}
}
