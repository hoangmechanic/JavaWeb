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
import com.nhatnghe.entity.Customer;
import com.nhatnghe.entity.HiberUtil;

@WebServlet("/user/list.php")
public class CustomerListServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Session session = HiberUtil.getSessionFactory().openSession();
		
		String hql = "FROM Customer";
		TypedQuery<Customer> query = session.createQuery(hql, Customer.class);
		List<Customer> list = query.getResultList();
		req.setAttribute("list", list);
		req.getRequestDispatcher("/WEB-INF/views/user/list.jsp").forward(req, resp);
	}
}
