package com.vocanh.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CookieService {
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;
	
	public Cookie create(String name, String value, int days) {
		value = Base64.encodeBase64String(value.getBytes());
		Cookie cookie = new Cookie(name, value);
		cookie.setPath("/");
		cookie.setMaxAge(days*24*60*60);
		response.addCookie(cookie);
		return cookie;
	}
	public void delete(String name) {
		this.create(name, "", 0);
	}
	public Cookie get(String name) {
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie cookie : cookies) {
				if(cookie.getName().equals(name)) {
					String value = cookie.getValue();
					cookie.setValue(new String(Base64.decodeBase64(value)));
					return cookie;
				}
			}
		}
		return null;
	}
	public String getValue(String name, String defaultValue) {
		Cookie cookie = this.get(name);
		if(cookie != null) {
			return cookie.getValue();
		}
		return defaultValue;
	}
}
