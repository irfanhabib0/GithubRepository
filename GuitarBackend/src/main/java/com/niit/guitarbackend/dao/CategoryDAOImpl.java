package com.niit.guitarbackend.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.guitarbackend.model.Category;

@EnableTransactionManagement
@Repository(value = "categoryDAO")
public class CategoryDAOImpl implements CategoryDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	
	public CategoryDAOImpl(SessionFactory sessionFactory) {
		// TODO Auto-generated constructor stub
	
		this.sessionFactory=sessionFactory;
	}
	
	@Transactional
	public boolean save(Category category) {
		// TODO Auto-generated method stub
		try{
		sessionFactory.getCurrentSession().save(category);
		return true;
		}
		catch(Exception ex){
			ex.printStackTrace();
			return false;
		}
	}

	@Transactional
	public boolean update(Category category) {
		// TODO Auto-generated method stub
		try{
		sessionFactory.getCurrentSession().update(category);
		return true;
		}
		catch(Exception ex){
			return false;
		}
	}

	@Transactional
	public boolean delete(Category category) {
		// TODO Auto-generated method stub
		try{
		sessionFactory.getCurrentSession().delete(category);
		return true;
		}
		catch(Exception ex){
			return false;
		}
	}

	@Transactional
	public Category search(String id) {
		// TODO Auto-generated method stub
		String hql="from Category where categoryid='"+id+"'";
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery(hql);
		List <Category>list=query.list();
		if(list.size()>0){
			return list.get(0);
		}
		else{
		
		return null;
		}
	}

	@Transactional
	public List<Category> list() {
		// TODO Auto-generated method stub
		String hql="from Category";
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery(hql);
		List <Category>list=query.list();
		if(list.size()>0){
			return list;
		}
		else{
		return null;
		}
	}

}
