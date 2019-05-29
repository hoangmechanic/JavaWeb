package com.spr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ResultController {
	@RequestMapping("url1")
	public String method1() {
		return "url1";
	}
	
	@RequestMapping("url2")
	public void method2() {
	}
	
	@ResponseBody
	@RequestMapping("url3")
	public String method3() {
		return "Cong cha nhu nui thai son";
	}
	
	@RequestMapping("url4")
	public String method4(Model model) {
		model.addAttribute("message", "method4");
		return "forward:/url1";
	}
	
	@RequestMapping("url5")
	public String method5(Model model) {
		model.addAttribute("message", "method5");
		return "redirect:/url1";
	}
}
