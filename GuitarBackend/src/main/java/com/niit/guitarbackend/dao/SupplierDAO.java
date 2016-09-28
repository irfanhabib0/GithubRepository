package com.niit.guitarbackend.dao;

import java.util.List;

import com.niit.guitarbackend.model.Supplier;


public interface SupplierDAO
{

	public  boolean save(Supplier supplier);
	
	public  boolean update(Supplier supplier);
	
	public  boolean delete(Supplier supplier);
	
	public  Supplier search(String id); //returns one category object from the database  
	
	public  List<Supplier> list(); //returns list of category objects
}
