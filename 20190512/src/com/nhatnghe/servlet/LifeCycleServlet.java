package com.nhatnghe.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/life/cycle.php")
public class LifeCycleServlet extends HttpServlet {
	
	@Override
	public void service(ServletRequest req, ServletResponse resp) throws ServletException, IOException {
	System.out.println("LifeCycleServlet.service()" + Thread.currentThread().getId());
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
