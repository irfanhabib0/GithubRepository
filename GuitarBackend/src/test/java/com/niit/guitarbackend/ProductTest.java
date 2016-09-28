package com.niit.guitarbackend;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.hibernate.SessionFactory;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.guitarbackend.dao.ProductDAO;

import com.niit.guitarbackend.model.Product;

public class ProductTest 
{
	@Autowired
	 ProductDAO productDAO;
	
	@Autowired
    Product product;
	
	AnnotationConfigApplicationContext context;
	
	@Autowired
	private SessionFactory sessionFactory;
	@Before
	public void init(){
		
		context=new AnnotationConfigApplicationContext();
		context.scan("com.niit.guitarbackend");
		context.refresh();
		productDAO= (ProductDAO) context.getBean("productDAO");
		product=(Product)context.getBean("product");
		
}
	/*@Test
	public  void addProductTestCase()
	{
		
		product.setProductid("PR002");
		product.setProductname("blue Heaven");
		product.setDescription("electric guiter");
		product.setPrice(100.00);
		product.setCategoryid("CG02");
		product.setSupplierid("SP01");
		assertEquals("addProductTestCase",productDAO.save(product),true);
	}*/
	/*@Test
	public void deleteProductTestCase()
	{
		
	product.setProductid(11);
	product.setProductname("Thunder");
	product.setDescription("Electric Guiter");
	productDAO.delete(product);
	assertEquals("deleteProductTestCase",productDAO.delete(product),true);

	}*/
	@Test
	public void updateProductTestCase()
	{
		
		product.setProductid("PR001");
		product.setProductname("Thunder");
		product.setDescription("ELECTRIC Guiter");
		product.setPrice(100.00);
		product.setCategoryid("CG02");
		product.setSupplierid("SP01");
	
	assertEquals("updateProductTestCase",productDAO.update(product),true);

	}
	/*@Test
	public void listCategoryTestCase()
	{
		
		List<Product> listproduct=productDAO.list();
		int rowcount=listproduct.size();
		assertEquals("listproductTestCase",rowcount,2);
		
		
	}*/
	/*@Test
	public void getCategoryTestCase()
	{
		
		product=productDAO.search("PR002");
		
		assertEquals(product.getProductname(),"Good Dreamz");
		
		
	}*/

}
	
	