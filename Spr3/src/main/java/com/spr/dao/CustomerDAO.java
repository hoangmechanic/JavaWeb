package com.spr.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spr.entity.Category;
import com.spr.entity.Customer;

@Transactional
@Repository
public class CustomerDAO implements IDAO<Customer, String>{
	@Autowired
	SessionFactory factory;
	

	@Override
	public List<Customer> findAll() {
		String hql = "FROM Customer";
		Session session = factory.getCurrentSession();
		TypedQuery<Customer> query = session.createQuery(hql, Customer.class);
		List<Customer> list = query.getResultList();
		return list;
	}

	@Override
	public void create(Customer entity) {
		Session session = factory.getCurrentSession();
		session.persist(entity);
	}

	@Override
	public void update(Customer entity) {
		Session session = factory.getCurrentSession();
		session.merge(entity);	
	}

	

	@Override
	public Customer findByID(String id) {
		Session session = factory.getCurrentSession();
		Customer entity = session.find(Customer.class, id);
		return entity;
	}

	@Override
	public void delete(int id) {
		Session session = factory.getCurrentSession();
		Customer entity = session.find(Customer.class, id);
		session.remove(entity);
	}
}
