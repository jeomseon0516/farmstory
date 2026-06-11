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
import kr.co.farmstory.option.CategoryOption;
import kr.co.farmstory.option.MenuOption;

@WebFilter("*")
public class BoardLayoutFilter implements Filter {
	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException { 
		
		String menu = req.getParameter("menu");
		String category = req.getParameter("category");
		MenuOption menuOption = MenuOption.from(menu);
		CategoryOption categoryOption = CategoryOption.from(category);
		
		if (categoryOption == null && menuOption != null) {
			categoryOption = menuOption.getCategoryOptions().get(0);
		}
		
		req.setAttribute("menu", menu);
		req.setAttribute("category", category);
		req.setAttribute("menuOption", menuOption);
		req.setAttribute("categoryOption", categoryOption);
		chain.doFilter(req, resp);
	}
}
