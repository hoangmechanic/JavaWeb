package com.eshop.service;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.eshop.entity.Order;
import com.eshop.utils.XHttp;
import com.eshop.utils.XString;

@Service
@EnableScheduling
public class MailerService {
	@Autowired
	JavaMailSender mailer;
	
	List<MailModel> mails = new ArrayList<>();
	
	public void sendWelcome(String email, String username) {
		String url = XHttp.getUrl().replace("signup", "activate/" + XString.encode64(username));
		MailModel mail = new MailModel(email, 
				"Welcome to eshop", 
				"Click <a href='"+url+"'>activite</a> your account please!");
		this.queue(mail);
	}
	
	public void sendResetCode(String email, String resetCode) {
		MailModel mail = new MailModel(email,
				"Reset your password!",
				"Please use the code " + resetCode + "to reset you password!");
		this.queue(mail);
	}
	
	public void sendOrder(String email, Order order) {
		String url = XHttp.getUrl().replace("purchase", "detail/"+order.getId());
		MailModel mail = new MailModel(email,
				"Your order!",
				"Your order is <a href='"+url+"'>#orderId</a>");
		this.queue(mail);
	}
	
	public void queue(MailModel mail) {
		mails.add(mail);
	}
	
	public void queue(String to, String subject, String body, String...others) {
		this.queue(new MailModel(to, subject, body, others));
	}
	
	@Scheduled(fixedRate=1000, initialDelay=5000)
	private void send() {
		while(mails.size() > 0) {
			MailModel mail = mails.remove(0);
			this.send(mail);
		}
	}
	
	private void send(MailModel mail) {
		try {
			MimeMessage message = mailer.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			
			helper.setTo(mail.getTo());
			helper.setSubject(mail.getSubject());
			helper.setText(mail.getBody(), true);
			if(mail.getFrom().contains("<")) {
				helper.setFrom(mail.getFrom());
				helper.setReplyTo(mail.getFrom());
			}
			else {
				helper.setFrom(mail.getFrom(), mail.getFrom());
				helper.setReplyTo(mail.getFrom(), mail.getFrom());
			}
			if(!XString.isNullOrEmpty(mail.getCc())) {
				helper.setCc(mail.getCc().split("[,; ]+"));
			}
			if(!XString.isNullOrEmpty(mail.getBcc())) {
				helper.setBcc(mail.getBcc().split("[,; ]+"));
			}
			if(!XString.isNullOrEmpty(mail.getAttachments())) {
				String[] filenames = mail.getAttachments().split("[,;]+");
				for(String filename : filenames) {
					File file = new File(filename);
					helper.addAttachment(file.getName(), file);
				}
			}
			mailer.send(message);
			System.out.println(mail.getFrom() + "=>" + mail.getTo() + " at " + new Date());
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static class MailModel{
		String from = "EShop Master <javapostoffice@gmail.com>";
		String to;
		String cc;
		String bcc;
		String subject;
		String body;
		String attachments;
		
		public MailModel() {}
		
		public MailModel(String to, String subject, String body, String...others) {
			this.to = to;
			this.subject = subject;
			this.body = body;
			if(others.length > 0 && !XString.isNullOrEmpty(others[0])) {
				this.from = others[0];
			}
			if(others.length > 1 && !XString.isNullOrEmpty(others[1])) {
				this.cc = others[1];
			}
			if(others.length > 2 && !XString.isNullOrEmpty(others[2])) {
				this.bcc = others[2];
			}
			if(others.length > 3 && !XString.isNullOrEmpty(others[3])) {
				this.attachments = others[3];
			}
		}
		
		public String getFrom() {
			return from;
		}
		public void setFrom(String from) {
			this.from = from;
		}
		public String getTo() {
			return to;
		}
		public void setTo(String to) {
			this.to = to;
		}
		public String getCc() {
			return cc;
		}
		public void setCc(String cc) {
			this.cc = cc;
		}
		public String getBcc() {
			return bcc;
		}
		public void setBcc(String bcc) {
			this.bcc = bcc;
		}
		public String getSubject() {
			return subject;
		}
		public void setSubject(String subject) {
			this.subject = subject;
		}
		public String getBody() {
			return body;
		}
		public void setBody(String body) {
			this.body = body;
		}
		public String getAttachments() {
			return attachments;
		}
		public void setAttachments(String attachments) {
			this.attachments = attachments;
		}
	}
}
