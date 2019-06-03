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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spr.dao.CategoryDAO;
import com.spr.entity.Category;

@Transactional
@Controller
public class CategoryController {
	
	@Autowired
	CategoryDAO dao;
	
	@RequestMapping("category/index.php")
	public String index(Model model) {
		Category entity = new Category();
		model.addAttribute("item", entity);
		model.addAttribute("list",dao.findAll());
		return "category/index";
	}
	
	@RequestMapping("category/edit/{id}.php")
	public String edit(Model model, @PathVariable("id") Integer id) {
		Category entity = dao.findByID(id);
		model.addAttribute("item", entity);
		model.addAttribute("list", dao.findAll());
		return "category/index";
	}
	
	@RequestMapping("category/insert.php")
	public String insert(Model model, Category entity) {	
		dao.create(entity);
		
		model.addAttribute("item", new Category());
		model.addAttribute("list", dao.findAll());
		return "category/index";
	}
	
	@RequestMapping("category/update.php")
	public String update(Model model, Category entity) {	
		dao.update(entity);
		
		model.addAttribute("item", entity);
		model.addAttribute("list", dao.findAll());
		return "category/index";
	}
	
	@RequestMapping("category/delete.php")
	public String delete(Model model, @RequestParam("id") Integer id) {	
		dao.delete(id);
		
		model.addAttribute("item", new Category());
		model.addAttribute("list", dao.findAll());
		return "category/index";
	}
}
