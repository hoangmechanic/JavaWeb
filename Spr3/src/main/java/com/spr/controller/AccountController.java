package com.spr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spr.dao.CategoryDAO;
import com.spr.entity.Customer;

@Controller
public class AccountController {
	
	@Autowired
	CategoryDAO dao;
	
	@RequestMapping("login.php")
	public String login() {
		return "account/login";
	}

	@PostMapping("login.php")
	public String login(Model model, @RequestParam("id") String id,
			@RequestParam("pass") String pw,
			@RequestParam(name ="remember", defaultValue="false") boolean value) {
		
		Customer user = dao.findByID(id);
		if(user== null) {
			model.addAttribute("message", "Invalid user");
		} if(!user.getPassword().equals(pw)) {
			model.addAttribute("message", "Invalid password");
		} else {
			model.addAttribute("message", "pass");
			if (rm = true) {
				cookie.create
			} else {
				cookie.delete
			}
		}
		
		
		return "account/login";
	}
	
}
