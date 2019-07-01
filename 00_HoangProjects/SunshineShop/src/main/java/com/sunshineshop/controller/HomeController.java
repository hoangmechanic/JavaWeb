package com.sunshineshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("")
	public String wellcome() {
		return "home/index";
	}

	@RequestMapping("/home/index")
	public String index() {
		return "home/index";
	}
}
