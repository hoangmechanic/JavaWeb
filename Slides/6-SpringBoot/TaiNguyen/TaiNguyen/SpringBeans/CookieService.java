package com.eshop.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eshop.utils.XString;

@Service
public class CookieService {
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;
	
	private Cookie get(String name) {
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie cookie : cookies) {
				if(cookie.getName().equals(name)) {
					return cookie;
				}
			}
		}
		return null;
	}
	
	public String getValue(String name, String defaultValue) {
		Cookie cookie = this.get(name);
		if(cookie == null) {
			return defaultValue;
		}
		return XString.decode64(cookie.getValue());
	}
	
	public void add(String name, String value, int days) {
		Cookie cookie = new Cookie(name, XString.encode64(value));
		cookie.setMaxAge(days*24*60*60);
		cookie.setPath("/");
		response.addCookie(cookie);
	}
	
	public void delete(String name) {
		this.add(name, "", 0) ;
	}
}
