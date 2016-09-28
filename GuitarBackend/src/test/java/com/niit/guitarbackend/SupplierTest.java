package com.niit.guitarbackend;

import static org.junit.Assert.assertEquals;

import org.hibernate.SessionFactory;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import com.niit.guitarbackend.dao.SupplierDAO;
import com.niit.guitarbackend.model.Supplier;

import java.util.List;

public class SupplierTest 
{
	@Autowired
	 SupplierDAO supplierDAO;
	
	@Autowired
   Supplier supplier;
	AnnotationConfigApplicationContext context;
	@Autowired
	private SessionFactory sessionFactory;
	
	@Before
	public void init(){
		
		context=new AnnotationConfigApplicationContext();
		context.scan("com.niit.guitarbackend");
		context.refresh();
		supplierDAO= (SupplierDAO) context.getBean("supplierDAO");
		supplier= (Supplier)context.getBean("supplier");
		
		
}
	/*@Test
	public  void addSupplierTestCase()
	{
		
		supplier.setSupplierid("SP01");
		supplier.setSuppliername("ABC electric");
		supplier.setSupplieraddress("musicArt,park street,kolkata");
	assertEquals("addSupplierTestCase",supplierDAO.save(supplier),true);

	}*/
	/*@Test
	public void deleteSupplierTestCase()
	{
		
	supplier.setSupplierid("SP01");
	supplier.setSuppliername("ABC electric");
	supplier.setSupplieraddress("musicArt,park street,kolkata");
	supplierDAO.delete(supplier);
	assertEquals("deleteSupplierTestCase",supplierDAO.delete(supplier),true);

	}*/
	/*@Test
	public void updateSupplierTestCase()
	{
		
	supplier.setSupplierid("SP01");
	supplier.setSuppliername("PVC electric");
	supplier.setSupplieraddress("bigC,kakurgachi,kolkata");
	supplierDAO.update(supplier);
	assertEquals("updateSupplierTestCase",supplierDAO.update(supplier),true);

	}*/
	
	/*@Test
	public void listSupplierTestCase()
	{
		
		List <Supplier>listsupplier=supplierDAO.list();
		int rowcount= listsupplier.size();
		assertEquals("listsupplierTestCase",rowcount,1);
		
		
	}*/
	
	@Test
	public void getSupplierTestCase()
	{
		
		supplier=supplierDAO.search("SP01");
		
		assertEquals(supplier.getSuppliername(),"PVC electric");
		
		
	}
}