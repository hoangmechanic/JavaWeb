package com.spr.di;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class MailerService {

	@Autowired
	JavaMailSender mailSender;
	/**
	 * Send email
	 *
	 * @param to
	 *            receiver email
	 * @param subject
	 * @param body
	 *            contents
	 * @param others
	 *            (from, cc, bcc, attachments)
	 * @throws MessagingException 
	 * @throws UnsupportedEncodingException 
	 */
	public void send(String to, String subject, String body, String... others) throws MessagingException, UnsupportedEncodingException {
		MimeMessage mail = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(mail,true,"utf-8");
		helper.setFrom("hoangmechatronics@gmail.com","Nguyễn Hoàng");
		helper.setTo(to);
		helper.setCc("hoanggeneral@gmail.com");
		helper.setBcc("hoanggeneral@gmail.com");
		helper.setSubject(subject);
		helper.setText(body,true);
		helper.setReplyTo("hoangmechatronics@gmail.com","Nguyễn Hoàng");
		
		System.out.println("########## MailerService");
	}
}
