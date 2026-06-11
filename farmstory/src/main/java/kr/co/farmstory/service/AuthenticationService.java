package kr.co.farmstory.service;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import kr.co.farmstory.dto.UserDTO;

public enum AuthenticationService {
	INSTANCE;

    public UserDTO getLoginUser(HttpServletRequest req) {
        HttpSession session = req.getSession();

        return session == null 
        		? null 
        		: (UserDTO)session.getAttribute("sessUser");
    }

    public boolean isLoggedIn(HttpServletRequest req) {
        return getLoginUser(req) != null;
    }

}
