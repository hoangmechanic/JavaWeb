package com.spr.controller;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spr.di.MailerService;

@Controller
public class MailerController {
	@Autowired
	MailerService mailerService;
	
	@ResponseBody
	@RequestMapping("mailer/send1.php")
	public void send1(Model model) throws UnsupportedEncodingException, MessagingException {
		String to = "hoanggeneral@gmail.com";
		String subject = "Test";
		String body = "Hôm nay ngày 2019/06/08 tôi đi học";
		mailerService.send(to, subject, body, "others");
		model.addAttribute("Ok");
		
		System.out.println("########## MailerController");
	}
}
