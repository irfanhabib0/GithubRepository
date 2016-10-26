package com.niit.guiter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.niit.guitarbackend.dao.CategoryDAO;
import com.niit.guitarbackend.dao.ProductDAO;
import com.niit.guitarbackend.dao.SupplierDAO;
import com.niit.guitarbackend.model.Category;
import com.niit.guitarbackend.model.Product;
import com.niit.guitarbackend.model.Supplier;
import com.utility.FileUtil;

@Controller

public class ProductController {

	@Autowired
	ProductDAO productDAO;
	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	SupplierDAO supplierDAO;

	@RequestMapping("/product")
	public String getProductPage(Model model) {
		List<Product> productlist = productDAO.list();
		List<Category> categorylist = categoryDAO.list();
		List<Supplier> supplierlist = supplierDAO.list();

		
		model.addAttribute("productlist", productlist);
		model.addAttribute("categorylist", categorylist);
		model.addAttribute("supplierlist", supplierlist);
		return "product";
	}
	@RequestMapping("/productdetails")
	public String getProductdetailsPage(Model model) {
		List<Product> productlist = productDAO.list();
		List<Category> categorylist = categoryDAO.list();
		List<Supplier> supplierlist = supplierDAO.list();

		
		model.addAttribute("productlist", productlist);
		model.addAttribute("categorylist", categorylist);
		model.addAttribute("supplierlist", supplierlist);
		return "productdetails";
	}

	@ModelAttribute("product")
	public Product create()
	{
		return new Product();
	}
	
	@RequestMapping(value="/saveproduct", method=RequestMethod.POST)
	public String saveProduct(@ModelAttribute("product") Product product, Model model) {

		System.out.println(product.getProductid()+" "+product.getProductname()+" "+product.getPrice()+" "+product.getDescription()+" ");
		Product searchproduct = (Product) productDAO.search(product.getProductid());
		MultipartFile image=product.getImage();
		if ((searchproduct != null) && (searchproduct.getProductid().equals(product.getProductid()))) {
		
			productDAO.update(product);
			//FileUtil.upload("D:/mavenworkspace/Guiter/src/main/webapp/resources/img", image,product.getProductid()+".jpg");
			
		} else {
			
			productDAO.save(product);

			FileUtil.upload("D:/mavenworkspace/Guiter/src/main/webapp/resources/img/", image,product.getProductid()+".jpg");
			
			//productDAO.update(product);
		}

		
		return "redirect:/product";

	}

	@RequestMapping(value = "/deleteproduct/{id}")
	public String deleteProduct(@PathVariable("id") String id) {

		Product product = productDAO.search(id);
		if (product != null) {
			productDAO.delete(product);

		}
		return "redirect:/product";

	}

	@RequestMapping(value = "/editproduct/{id}")
	public String editProduct(@PathVariable("id") String id, Model model) {

		List<Product> productlist = productDAO.list();
		List<Category> categorylist = categoryDAO.list();
		List<Supplier> supplierlist = supplierDAO.list();

		Product selectedproduct = productDAO.search(id);
		if (selectedproduct != null) {
			model.addAttribute("product", selectedproduct);
		}
		model.addAttribute("productlist", productlist);
		model.addAttribute("categorylist", categorylist);
		model.addAttribute("supplierlist", supplierlist);
		return "product";
	}

}
