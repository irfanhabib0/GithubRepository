package com.niit.guitarbackend.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import com.niit.guitarbackend.model.Product;

@EnableTransactionManagement
@Repository(value = "productDAO")
public class ProductDAOImpl implements ProductDAO {
	
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	public ProductDAOImpl(SessionFactory sessionFactory) {
		// TODO Auto-generated constructor stub
	
		this.sessionFactory=sessionFactory;
	}
	
	@Transactional
	public boolean save(Product product) {
		// TODO Auto-generated method stub
		try{
			sessionFactory.getCurrentSession().save(product);
			return true;
			}
			catch(Exception ex){
				ex.printStackTrace();
				System.out.println(ex.getMessage());
				return false;
			}
		
	}
	@Transactional
	public boolean update(Product product) {
		// TODO Auto-generated method stub
		try{
			sessionFactory.getCurrentSession().update(product);
			return true;
			}
			catch(Exception ex){
				return false;
			}
		
	}
	@Transactional
	public boolean delete(Product product) {
		// TODO Auto-generated method stub
		try{
			sessionFactory.getCurrentSession().delete(product);
			return true;
			}
			catch(Exception ex){
				return false;
			}
		
	}

	@Transactional
	public Product search(String id) {
		// TODO Auto-generated method stub
		String hql="from Product where productid='"+id+"'";
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery(hql);
		List <Product>list=query.list();
		if(list.size()>0){
			return list.get(0);
		}
		else{
		
		return null;
		}
	
	}

	@Transactional
	public List<Product> list() {
		// TODO Auto-generated method stub
		String hql="from Product";
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery(hql);
		List <Product>list=query.list();
		if(list.size()>0){
			return list;
		}
		else{
		return null;
		}
	}

	

}
