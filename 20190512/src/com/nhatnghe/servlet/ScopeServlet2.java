package com.nhatnghe.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/scope/s2.php")
public class ScopeServlet2  extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		System.out.println("session.getAttribute: "+session.getAttribute("xxx"));
		//session.removeAttribute("xxx");
		session.setAttribute("xxx", "Session 2");

		req.getRequestDispatcher("/WEB-INF/views/scope.jsp").forward(req,resp);
	}
}
