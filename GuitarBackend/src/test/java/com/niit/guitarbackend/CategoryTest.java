package com.niit.guitarbackend;
import static org.junit.Assert.*;

import java.util.List;

import org.hibernate.SessionFactory;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.guitarbackend.dao.CategoryDAO;
import com.niit.guitarbackend.model.Category;

public class CategoryTest {

	
	@Autowired
	 CategoryDAO categoryDAO;
	
	@Autowired
    Category category;
	
	AnnotationConfigApplicationContext context;
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Before
	public void init(){
		
		context=new AnnotationConfigApplicationContext();
		context.scan("com.niit.guitarbackend");
		context.refresh();
		categoryDAO= (CategoryDAO) context.getBean("categoryDAO");
		category= (Category)context.getBean("category");
		
		}
	
	/*@Test
	public  void addCategoryTestCase()
	{
		
	category.setCategoryid("CG03");
	category.setCategoryname("Acoustic Guitar");
	category.setCategorydescription("Acoustic Wooden Guitar");
	assertEquals("addCategoryTestCase",categoryDAO.save(category),true);

	}*/

	/*@Test
	public void deleteCategoryTestCase()
	{
		
	category.setCategoryid("CG01");
	category.setCategoryname("Acoustic Guitar");
	category.setCategorydescription("Acoustic Wooden Guitar");
	categoryDAO.delete(category);
	assertEquals("deleteCategoryTestCase",categoryDAO.delete(category),true);

	}
*/	
	/*@Test
	public void updateCategoryTestCase()
	{
		
	category.setCategoryid("CG03");
	category.setCategoryname("Acoustic Guitars");
	category.setCategorydescription("actual mode");
	categoryDAO.update(category);
	assertEquals("updateCategoryTestCase",categoryDAO.update(category),true);

	}*/
	
	/*@Test
	public void listCategoryTestCase()
	{
		
		List<Category> listcategory=categoryDAO.list();
		int rowcount=listcategory.size();
		assertEquals("listcategoryTestCase",rowcount,2);
		
		
	}*/
	
	@Test
	public void getCategoryTestCase()
	{
		
		category=categoryDAO.search("CG02");
		
		assertEquals(category.getCategoryname(),"Electric Guitar");
		
		
	}
}
