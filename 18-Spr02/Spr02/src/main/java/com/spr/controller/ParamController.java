package com.spr.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spr.bean.User;

@Controller
public class ParamController {
	@Autowired
	HttpServletRequest request;

	@GetMapping("demo1")
	public String showForm() {
		return "param/demo1";
	}

	@PostMapping("demo1")
	public String processForm(Model model) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pass");
		model.addAttribute("message", String.format("%s %s", id, pw));
		return "param/demo1";
	}

	@GetMapping("demo2")
	public String showForm2() {
		return "param/demo2";
	}

	@PostMapping("demo2")
	public String processForm2(Model model, @RequestParam("id") String id, @RequestParam("pass") String pw) {
		model.addAttribute("message", String.format("%s %s", id, pw));
		return "param/demo2";
	}

	@GetMapping("demo3")
	public String showForm3() {
		return "param/demo3";
	}

	@PostMapping("demo3")
	public String processForm3(Model model, User u) {

		model.addAttribute("message", String.format("%s %s %s", u.getId(), u.getPass(),u.getH()));
		return "param/demo3";
	}


	@GetMapping("demo4")
	public String showForm4() {
		return "param/demo4";
	}

	@PostMapping("{id}/demo4/{pass}")
	public String processForm4(Model model, @PathVariable("id") String id, @PathVariable("pass") String pw) {
		model.addAttribute("message", String.format("%s %s", id, pw));
		return "param/demo4";
	}

	@ResponseBody
	@GetMapping("demo5")
	public String showForm5(Model model, @CookieValue("JSESSIONID") String cookie,
			@CookieValue(name="user", defaultValue="Hoang") String user) {
		return user;
	}
}
