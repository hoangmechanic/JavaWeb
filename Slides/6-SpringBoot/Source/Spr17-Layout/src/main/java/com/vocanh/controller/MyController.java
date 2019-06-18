package com.vocanh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {
	@RequestMapping("url1")
	public String method1() {
		return "home/index";
	}
	
	@RequestMapping("url2")
	public String method2() {
		return "home/about";
	}
}
