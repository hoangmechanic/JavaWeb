package com.nhatnghe.servlet;

import java.io.IOException;
import java.util.List;

import javax.persistence.TypedQuery;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import com.nhatnghe.entity.Category;
import com.nhatnghe.entity.HiberUtil;
import com.nhatnghe.entity.Product;

@WebServlet("/hiberanate.php")
public class HibernateController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Session session = HiberUtil.getSessionFactory().openSession();
		
		Product product = session.find(Product.class, 1005);

		String hql = "FROM Category";
		TypedQuery<Category> query = session.createQuery(hql, Category.class);
		List<Category> list = query.getResultList();
		req.setAttribute("list", list);
		
		req.setAttribute("item", product);
		
		req.getRequestDispatcher("/WEB-INF/views/hibernate/category.jsp").forward(req, resp);
	}
}
