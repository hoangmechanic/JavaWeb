package com.nhatnghe.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test/info.php")
public class InfoServlet extends HttpServlet {
	
//	@Override
//	public void service(ServletRequest req, ServletResponse resp) throws ServletException, IOException {
//	System.out.println("LifeCycleServlet.service()" + Thread.currentThread().getId());
//	}

	//Ghi chu neu vua co service method va doget, doPost thi service se chay 
	//va hai phuong thuc kia se ko chay

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("getContextPath():"+ req.getContextPath());
		System.out.println("getMethod():"+ req.getMethod());
		System.out.println("getRequestURL():"+req.getRequestURL());
		System.out.println("getRequestURI():"+req.getRequestURI());
		System.out.println("getParameter(\"a\"):"+req.getParameter("a"));

		//req.getRequestDispatcher("/WEB-INF/views/info.jsp").forward(req, resp);
		req.getRequestDispatcher("/WEB-INF/views/info.jsp").include(req, resp);
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("getContextPath():"+ req.getContextPath());
		System.out.println("getMethod():"+ req.getMethod());
		System.out.println("getRequestURL():"+req.getRequestURL());
		System.out.println("getRequestURI():"+req.getRequestURI());
		System.out.println("getParameter(\"a\"):"+req.getParameter("a"));
		System.out.println("Language):"+req.getLocale().getLanguage());

		//req.getRequestDispatcher("/WEB-INF/views/info.jsp").forward(req, resp);
		req.getRequestDispatcher("/WEB-INF/views/info.jsp").include(req, resp);
	}

	@Override
	public void init() {
		System.out.println("LifeCycleServlet.init()");
	}
	@Override
	public void destroy() {
		System.out.println("LifeCycleServlet.destroy()");
	}
}
