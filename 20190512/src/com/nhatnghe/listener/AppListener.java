package com.nhatnghe.listener;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class AppListener implements ServletContextListener,HttpSessionListener{

	private int visitor;
	
	@Override
	public void contextDestroyed(ServletContextEvent e) {
		ServletContext application = e.getServletContext();
		Path path = Paths.get(e.getServletContext().getRealPath("/WEB-INF/visitor.txt"));
		try {
			Files.write(path, String.valueOf(visitor).getBytes());
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		System.out.println("AppListener.contextDestroyed(): "+path.toString());
		
	}

	@Override
	public void contextInitialized(ServletContextEvent e) {
		Path path = Paths.get(e.getServletContext().getRealPath("/WEB-INF/visitor.txt"));
		try {
			visitor = Integer.parseInt(new String(Files.readAllBytes(path)));
			System.out.println("####Vistor:" +visitor);
		} catch (NumberFormatException | IOException e1) {
		}
		System.out.println("AppListener.contextInitialized():"+ path.toString());
	}

	@Override
	public void sessionCreated(HttpSessionEvent e) {
		visitor++;
		HttpSession  session = e.getSession();
		session.setMaxInactiveInterval(1); // Set thowi gian timeout tinh bang phut
		ServletContext application = session.getServletContext();
		application.setAttribute("visitor", visitor);
		System.out.println("AppListener.sessionCreated() ");
		
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent arg0) {
		System.out.println("AppListener.sessionDestroyed()");
		
	}

}
