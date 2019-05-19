package com.nhatnghe.cookie;

import java.io.IOException;
import java.util.Base64;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/cookie.php")
public class CookieServlet  extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = "user";
		//String value ="NDH";
		String value = new String(Base64.getEncoder().encode("Nguyễn Duy Hoàng".getBytes("utf-8")));
		Cookie cookie = new Cookie(name, value);
		cookie.setMaxAge(3*24*60*60); // 3 ngay
		cookie.setPath("/");
		resp.addCookie(cookie);
		
		
		req.getRequestDispatcher("/WEB-INF/views/cookie.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Cookie [] cookies = req.getCookies();
		if(cookies != null) {
			for(Cookie cookie: cookies) {
				String name = cookie.getName();
				if(name.equals("user")) {
					String value = cookie.getValue();
					String decode = new String(Base64.getDecoder().decode(value.getBytes()), "utf-8");
					req.setAttribute("username", decode);
				}
			}
		}
		req.getRequestDispatcher("/WEB-INF/views/cookie.jsp").forward(req, resp);
	}
}
