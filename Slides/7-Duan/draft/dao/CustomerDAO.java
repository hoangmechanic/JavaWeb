package com.vocanh.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.vocanh.entity.Customer;

@Transactional
@Repository
public class CustomerDAO {
	@Autowired
	SessionFactory factory;
	
	public List<Customer> findAll(){
		Session session = factory.getCurrentSession();
		String hql = "FROM Customer";
		TypedQuery<Customer> query = session.createQuery(hql, Customer.class);
		List<Customer> list = query.getResultList();
		return list;
	}
	
	public Customer findById(String id) {
		Session session = factory.getCurrentSession();
		Customer entity = session.find(Customer.class, id);
		return entity;
	}

	public Customer create(Customer entity){
		Session session = factory.getCurrentSession();
		session.save(entity);
		return entity;
	}
	
	public void update(Customer entity) {
		Session session = factory.getCurrentSession();
		session.update(entity);
	}
	
	public void delete(String id) {
		Session session = factory.getCurrentSession();
		session.delete(session.find(Customer.class, id));
	}
}
