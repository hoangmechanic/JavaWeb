package com.nhatnghe.servlet;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.TypedQuery;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;

import com.nhatnghe.entity.Category;
import com.nhatnghe.entity.HiberUtil;
import com.nhatnghe.entity.Product;

@WebServlet("/jstl.php")
public class JSTLServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Session session = HiberUtil.getSessionFactory().openSession();
	
		Product product = session.find(Product.class, 1006);
		req.setAttribute("item", product);
		
		String hql = "FROM Product WHERE unitPrice BETWEEN 5 AND 10";
		TypedQuery<Product> query = session.createQuery(hql, Product.class);
		List<Product> list = query.getResultList();
		req.setAttribute("items", list);
		
		req.getRequestDispatcher("/WEB-INF/views/jstl.jsp").forward(req,resp);
		
	}
}
