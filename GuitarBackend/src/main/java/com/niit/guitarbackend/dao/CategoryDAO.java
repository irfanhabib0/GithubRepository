package com.niit.guitarbackend.dao;

import java.util.List;

import com.niit.guitarbackend.model.Category;

public interface CategoryDAO
{

	public  boolean save(Category category);
	
	public  boolean update(Category category);
	
	public  boolean delete(Category category);
	
	public  Category search(String id); //returns one category object from the database  
	
	public  List<Category> list(); //returns list of category objects
}
