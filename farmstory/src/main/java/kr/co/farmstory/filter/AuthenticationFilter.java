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
import kr.co.farmstory.service.AuthenticationService;

@WebFilter({"/post/write.do"})
public class AuthenticationFilter implements Filter {
	
	AuthenticationService service = AuthenticationService.INSTANCE;
	
	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		
		if (!service.isLoggedIn((HttpServletRequest)req)) {
			((HttpServletResponse)resp).sendRedirect("/farmstory/user/login.do");
			return;
		}
		
		chain.doFilter(req, resp);
	}
}
