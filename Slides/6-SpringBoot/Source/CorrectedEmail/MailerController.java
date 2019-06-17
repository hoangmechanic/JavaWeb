package com.vocanh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vocanh.service.MailerService;

@Controller
public class MailerController {
	@Autowired
	MailerService mailer;
	
	@ResponseBody
	@RequestMapping("/mail/simple")
	public String method1() {
		// Gửi mail kích hoạt
		String to = "nghiemn@fpt.edu.vn";
		String subject = "Welcome to eshop";
		String body = "<a href=''>Activate</a>";
		mailer.send(to, subject, body);
		return "Gửi email đơn giản";
	}
	
	@ResponseBody
	@RequestMapping("mail/advance")
	public String method2() {
		String to = "";
		String subject = "";
		String body = "";
		String from = "";
		String cc = ",,";
		String bcc = ",,";
		String attach = ",,";
		mailer.send(to, subject, body, from, cc, bcc, attach);
		return "Gửi mail phức tạp";
	}
}
