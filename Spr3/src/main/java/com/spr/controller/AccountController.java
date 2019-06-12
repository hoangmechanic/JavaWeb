package com.spr.controller;

import javax.servlet.http.Cookie;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spr.dao.CustomerDAO;
import com.spr.di.CookieService;
import com.spr.entity.Category;
import com.spr.entity.Customer;

@Controller
public class AccountController {

	@Autowired
	CustomerDAO dao;

	@Autowired
	CookieService cookieSeverice;

	@RequestMapping("login.php")
	public String login(Model model) {
//		Cookie cookie = cookieSeverice.get("id");
//		model.addAttribute("cookie",cookie);
		return "account/login";
	}

	@PostMapping("login.php")
	public String login(Model model, @RequestParam("id") String strId, @RequestParam("pass") String pw,
			@RequestParam(name = "remember", defaultValue = "false") boolean rm) {

		Customer user = dao.findByID(strId);
		if (user == null) {
			model.addAttribute("message", "Invalid user");
		} else if (!user.getPassword().equals(pw)) {
			model.addAttribute("message", "Invalid password");
		} else {
			model.addAttribute("message", "Successful");
			if (rm == true) {
				cookieSeverice.create("id",String.valueOf(strId), 150);
				cookieSeverice.create("pw", String.valueOf(pw), 150);
			} else {
				cookieSeverice.delete("id");
				cookieSeverice.delete("pw");
			}
		}
		return "account/login";
	}

}
