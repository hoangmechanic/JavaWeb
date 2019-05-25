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

@WebServlet("/el.php")
public class ELServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		session.setAttribute("message", "This is the request");
		
		ServletContext app = session.getServletContext();
		app.setAttribute("message", "This is the application");
		
		Category category = new Category();
		category.setName("Mobile");
		category.setNameVN("Di dong");
		req.setAttribute("bean",category);

		Map<String, Object> items = new HashMap<>();
		items.put("mobile", "Dien thoai di dong");
		items.put("laptop", "May tinh xach tay");
		req.setAttribute("map", items);
		
		List<String> names = Arrays.asList("Phuong","Cuong", "Hanh");
		req.setAttribute("list", names);
		
		req.getRequestDispatcher("/WEB-INF/views/el.jsp").forward(req,resp);
		
	}
}
