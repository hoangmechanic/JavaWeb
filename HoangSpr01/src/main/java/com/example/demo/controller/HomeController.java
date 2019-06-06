package com.example.demo.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {

	@ResponseBody
	@RequestMapping("home/index")
	public void index(Model model, HttpSession sesion, HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setAttribute("message1","This is request");
		String user = req.getParameter("user");
		model.addAttribute("message",user);
		resp.addHeader("name", "value");
		System.out.println("################"+resp.getLocale());
		PrintWriter out = resp.getWriter();
		System.out.println("################"+out.toString());
		out.println("<html>");
		out.println("<head><meta http-equiv=Content-Type content=text/html; charset=ISO-8859-1>");
		out.println("<title>Your Cards</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h3>Your Cards List</h3>");
		out.println("<h3>Card A(Balance -234.00)</h3>");
		out.println("<h3>Card B(Balance 0.00)</h3>");
		out.println("<br>");
		out.println("<a href=\"/ServletSample/UserAccounts\"> My Account</a>");
		out.println("<br><a href=\"/ServletSample/BankHomePage\">Click here to go back to homepage</a>");
		out.println("</body></html>");
	}

	@RequestMapping("home/about")
	public String about() {
		return "about";
	}
}
