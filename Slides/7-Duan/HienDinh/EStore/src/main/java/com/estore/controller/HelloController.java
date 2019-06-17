package com.estore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
	@RequestMapping("hello.php")
	public String sayHello(Model model) {
		model.addAttribute("message", "Chào quí vị");
		return "hello";
	}
}
