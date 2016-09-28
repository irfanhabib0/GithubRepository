package com.niit.guitarbackend.dao;

import java.util.List;


import com.niit.guitarbackend.model.Product;
import com.niit.guitarbackend.model.Supplier;

public interface ProductDAO 
{
public  boolean save(Product product);
	
	public  boolean update(Product product);
	
	public  boolean delete(Product product);
	
	public  Product search(String productid); //returns one category object from the database  
	
	public  List<Product> list();
		
}
