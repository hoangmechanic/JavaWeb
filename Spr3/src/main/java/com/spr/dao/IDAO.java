package com.spr.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public interface IDAO<T,I> {

	public T findByID(I id);

	public List<T> findAll();

	public void create(T entity);

	public void update(T entity);

	public void delete(int id);

}
