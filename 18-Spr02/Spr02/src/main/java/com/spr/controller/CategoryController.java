package com.spr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("category")
public class CategoryController {
	@RequestMapping()
	public String index() {
		return "category/index";
	}
	
	@RequestMapping(params="insert")
	public String insert() {
		return "category/insert";
	}
	
	@RequestMapping(params="update")
	public String update() {
		return "category/update";
	}
}
