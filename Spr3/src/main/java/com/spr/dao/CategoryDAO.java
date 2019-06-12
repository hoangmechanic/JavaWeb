package com.spr.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spr.entity.Category;

@Transactional
@Repository
public class CategoryDAO implements IDAO<Category, Integer> {
	@Autowired
	SessionFactory factory;

	@Override
	public Category findByID(Integer id) {
		Session session = factory.getCurrentSession();
		Category entity = session.find(Category.class, id);
		return entity;
	}

	@Override
	public List<Category> findAll() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Category";
		TypedQuery<Category> query = session.createQuery(hql, Category.class);
		List<Category> list = query.getResultList();

		return list;
	}

	@Override
	public void create(Category entity) {
		Session session = factory.getCurrentSession();
		session.persist(entity);
	}

	@Override
	public void update(Category entity) {
		Session session = factory.getCurrentSession();
		session.merge(entity);
	}

	@Override
	public void delete(int id) {
		Session session = factory.getCurrentSession();
		Category entity = session.find(Category.class, id);
		session.remove(entity);
		
	}
}
