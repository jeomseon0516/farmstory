package kr.co.farmstory.filter;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletResponse;

@WebFilter("/admin/*")
public class AdminAuthorizationFilter implements Filter {
	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
		//로그인 확인
		
		HttpServletRequest req = (Http)
		
		// 권한 처리를 위해 로그인 정보 Session
		HttpSession session = req.session();
			//로그인 하지 않은 경우 - 로그인 페이지로 이동
			if(loginVO == null)
		
		
		// 관리자 권한 확인
		
		((HttpServletResponse)resp).sendRedirect("/main/main.do");
	}
}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
