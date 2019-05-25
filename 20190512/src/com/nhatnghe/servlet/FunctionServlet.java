package com.nhatnghe.servlet;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nhatnghe.entity.Category;

@WebServlet("/function.php")
public class FunctionServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		session.setAttribute("message", "Ngày xửa ngày xưa có bà bán dưa");
		
		req.getRequestDispatcher("/WEB-INF/views/function.jsp").forward(req,resp);
		
	}
}
