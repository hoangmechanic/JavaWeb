package com.spr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AccountController {
	@GetMapping("account/login")
	public String loginForm(Model model) {
		model.addAttribute("message", "loginForm()");
		return "account/login";
	}
	
	@PostMapping("account/login")
	public String loginProcess(Model model) {
		model.addAttribute("message", "loginProcess()");
		return "account/login";
	}
}
