package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register.php")
public class Register extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse respo) throws ServletException, IOException {
		req.getRequestDispatcher("form/register.jsp").forward(req, respo);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("message","Hello World 2");
		
		String fullname = req.getParameter("fullname");
		String gender = req.getParameter("gender");
		String country = req.getParameter("country");
		String music = req.getParameter("music");
		String travel = req.getParameter("travel");
		String other = req.getParameter("other");
		String notes = req.getParameter("notes");
		
		System.out.println("fullname: " + fullname);
		System.out.println("gender : " + gender);
		System.out.println("country: " + country);
		System.out.println("music: " + music);
		System.out.println("travel: " + travel);
		System.out.println("other: " + other);
		System.out.println("notes: " + notes);
		req.getRequestDispatcher("form/register.jsp").forward(req, resp);
	}
}