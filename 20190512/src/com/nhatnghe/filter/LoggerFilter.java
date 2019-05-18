package com.nhatnghe.filter;

import java.io.IOException;
import java.util.Date;

import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter(
		//urlPatterns = { "/life/cycle.php", "/test/info.php" },
		//urlPatterns = { "/*",}, // Tat cac các Servlet
		//urlPatterns = { "/admin/*, xyz/abc.php },
		urlPatterns = { "/life/cycle.php"},
		dispatcherTypes = DispatcherType.REQUEST)
public class LoggerFilter implements Filter {

	@Override
	public void destroy() {
		System.out.println("LoggerFilter.destroy at "+ new Date());
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("Before LoggerFilter.doFilter at "+ new Date());
		chain.doFilter(req, resp);
		System.out.println("After LoggerFilter.doFilter at "+ new Date());
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("LoggerFilter.init at "+ new Date());
		
	}

}
