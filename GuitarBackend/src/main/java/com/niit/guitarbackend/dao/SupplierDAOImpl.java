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
import com.niit.guitarbackend.model.Supplier;


@EnableTransactionManagement
@Repository(value = "supplierDAO")

public class SupplierDAOImpl implements SupplierDAO
{
	@Autowired
	private SessionFactory sessionFactory;
	
	
	public SupplierDAOImpl(SessionFactory sessionFactory) {
		// TODO Auto-generated constructor stub
	
		this.sessionFactory=sessionFactory;
	}
	@Transactional
	public boolean save(Supplier supplier) {
		// TODO Auto-generated method stub
		try{
			sessionFactory.getCurrentSession().save(supplier);
			return true;
			}
			catch(Exception ex){
				ex.printStackTrace();
				return false;
			}
		
	}
	@Transactional
	public boolean update(Supplier supplier) {
		// TODO Auto-generated method stub
		try{
			sessionFactory.getCurrentSession().update(supplier);
			return true;
			}
			catch(Exception ex){
				return false;
			}
	}
	@Transactional
	public boolean delete(Supplier supplier) {
		// TODO Auto-generated method stub
		try{
			sessionFactory.getCurrentSession().delete(supplier);
			return true;
			}
			catch(Exception ex){
				return false;
			}
	}
	@Transactional
	public Supplier search(String id) {
		// TODO Auto-generated method stub
		String hql="from Supplier where supplierid='"+id+"'";
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery(hql);
		List <Supplier>list=query.list();
		if(list.size()>0){
			return list.get(0);
		}
		else{
		return null;
	}
	}		

	@Transactional
	public List<Supplier> list() {
		// TODO Auto-generated method stub
		String hql="from Supplier";
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery(hql);
		List <Supplier>list=query.list();
		if(list.size()>0){
			return list;
		}
		else{
		return null;
		}
	}
	

}
