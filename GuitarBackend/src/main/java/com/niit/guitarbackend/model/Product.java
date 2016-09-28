package com.niit.guitarbackend.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Component
public class Product {
	
	@Id
	private String productid;
    private String productname;
    private String description;
    private double price;
    private String categoryid;
    private String supplierid;
    @Transient
    private MultipartFile image ;
    
    
    public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	@ManyToOne
    @JoinColumn(name="supplierid", updatable= false, insertable=false)
    private Supplier supplier;
    @ManyToOne
    @JoinColumn(name="categoryid", updatable= false, insertable=false)
    private Category category;
    
    public Supplier getSupplier() {
		return supplier;
	}
	public Category getCategory() {
		return category;
	}
	public String getProductid() {
		return productid;
	}
	public void setProductid(String string) {
		this.productid = string;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getCategoryid() {
		return categoryid;
	}
	public void setCategoryid(String categoryid) {
		this.categoryid = categoryid;
	}
	public String getSupplierid() {
		return supplierid;
	}
	public void setSupplierid(String supplierid) {
		this.supplierid = supplierid;
	}
	

}
