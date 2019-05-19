package com.nhatnghe.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/scope/s1.php")
public class ScopeServlet  extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("xxx", "Request");
		
		HttpSession session = req.getSession();
		session.setAttribute("xxx", "Session");
		
		ServletContext application = session.getServletContext();
		application.setAttribute("xxx", "application");
		
		req.getRequestDispatcher("/scope/s2.php").forward(req,resp);
	}
}
