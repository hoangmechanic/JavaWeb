package com.spr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spr.bean.Student;

@Controller
public class SharerController {
	@RequestMapping("sharer/demo1")
	public String demo1(Model model) {
		Student sv1 = new Student("Nguyễn Văn Tèo", 9);
		model.addAttribute("sv1", sv1);
		return "sharer";
	}
	
	@RequestMapping("sharer/demo2")
	public String demo2(@ModelAttribute("sv2") Student student) {
		//student.setFullname("Nguyễn Chí Phèo");
		//student.setMark(6);
		return "sharer";
	}
	
	@ModelAttribute("sv3")
	public Student getStudent() {
		Student sv3 = new Student("Phạm Thị Nở", 5);
		return sv3;
	}
	
}
