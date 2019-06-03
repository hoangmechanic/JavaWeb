package com.spr.di;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CookieService {

	@Autowired
	HttpServletRequest request;

	@Autowired
	HttpServletResponse response;

	public Cookie get(String name) {
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie c : cookies) {
				if (c.getName().equalsIgnoreCase(name)) {
					return c;
				}
			}
		}
		return null;

	}

	public void create(String name, String value, int days) {
		Cookie cookie = new Cookie(name,value);
		cookie.setPath("/");
		cookie.setMaxAge(days*24*60*60);
		response.addCookie(cookie);
	}

	public void delete(String name) {
		this.create(name, "", 0);
	}

	public String getValue(String name, String defaultValue) {
		Cookie cookie = this.get(name);
		if(cookie == null) {
			return defaultValue;
		} else {
			return cookie.getValue();
		}
	}
}
