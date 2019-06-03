package com.spr.controller;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spr.entity.Category;

@Transactional
@Controller
public class Category2Controller {
	
	@Autowired
	SessionFactory factory;
	
/*	@ResponseBody
	@RequestMapping("insert.php")
	public Category insert() {
		Category entity = new Category();
		entity.setName("Mouse");
		entity.setNameVN("Chuot");
		
		Session session = factory.getCurrentSession();
		session.persist(entity);

		return entity;
	}
	
	@ResponseBody
	@RequestMapping("select")
	public Category select() {
		Session session = factory.getCurrentSession();
		Category entity = session.find(Category.class, 1000);

		return entity;
	}

	@ResponseBody
	@RequestMapping("update")
	public Category update() {
		Session session = factory.getCurrentSession();
		Category entity = session.find(Category.class, 1273);
		entity.setNameVN("Con chuoc chu");
		session.update(entity);
		return entity;
	}

	@ResponseBody
	@RequestMapping("selectall.php")
	public List<Category> selectAll() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Category";
		TypedQuery<Category> query = session.createQuery(hql, Category.class);
		List<Category> list = query.getResultList();
		return list;
	}

*/
	@RequestMapping("index.php")
	public String index(Model model) {
		Category entity = new Category();
		model.addAttribute("item", entity);
		model.addAttribute("list", getCategories());
		return "category/index";
	}
	
	@RequestMapping("edit/{id}.php")
	public String edit(Model model, @PathVariable("id") Integer id) {
		Session session = factory.getCurrentSession();
		Category entity = session.find(Category.class, id);
		
		model.addAttribute("item", entity);
		model.addAttribute("list", getCategories());
		return "category/index";
	}
	
	@RequestMapping("insert.php")
	public String insert(Model model, Category entity) {	
		Session session = factory.getCurrentSession();
		session.persist(entity);
		
		model.addAttribute("item", new Category());
		model.addAttribute("list", getCategories());
		return "category/index";
	}
	
	@RequestMapping("update.php")
	public String update(Model model, Category entity) {	
		Session session = factory.getCurrentSession();
		session.merge(entity);
		
		model.addAttribute("item", entity);
		model.addAttribute("list", getCategories());
		return "category/index";
	}
	
	@RequestMapping("delete.php")
	public String delete(Model model, Category entity) {	
		Session session = factory.getCurrentSession();
		session.remove(entity);
		
		model.addAttribute("item", new Category());
		model.addAttribute("list", getCategories());
		return "category/index";
	}
		
	public List<Category> getCategories() {
		Session session = factory.getCurrentSession();
		
		String hql = "FROM Category";
		TypedQuery<Category> query = session.createQuery(hql, Category.class);
		List<Category> list = query.getResultList();
		
		return list;
	}
}
