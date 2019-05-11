package com.nhatnghe.entity;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.Transaction;

public class Test {

	public static void main(String[] args) {
		//insert();
		//query();
		query2();
	}

	private static void insert() {
		Category entity = new Category();
		//entity.setName("Lights");
		//entity.setNameVN("�?èn điện tử");
		entity.setId(1262);
		//entity.setName("Chair");
		//entity.setNameVN("Ghế đẩu");

		// Khung chuẫn
		Session session = HiberUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		try {
			//session.persist(entity);
			//session.merge(entity);
			session.remove(entity);
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
		}
		HiberUtil.shutdown();
		
	}

	private static void query() {
		String hql = "SELECT p FROM Product p";
		Session sesion = HiberUtil.getSessionFactory().openSession();
		TypedQuery<Product> query = sesion.createQuery(hql,Product.class);
		List<Product> list = query.getResultList();
		for(Product p: list) {
			System.out.printf("%s, %.2f\n", p.getName(), p.getUnitPrice());
		}
		
	}
	private static void query2() {
		String hql = "SELECT p.name,p.unitPrice, p.category.nameVN FROM Product p";
		Session sesion = HiberUtil.getSessionFactory().openSession();
		TypedQuery<Object[]> query = sesion.createQuery(hql,Object[].class);
		List<Object[]> list = query.getResultList();
		for(Object[] a: list) {
			System.out.printf("%s, %.2f, %s\n",a[0], a[1],a[2]);
		}
		
	}
}
