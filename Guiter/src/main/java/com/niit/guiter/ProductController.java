package com.niit.guiter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.guitarbackend.dao.CategoryDAO;
import com.niit.guitarbackend.dao.ProductDAO;
import com.niit.guitarbackend.dao.SupplierDAO;
import com.niit.guitarbackend.model.Category;
import com.niit.guitarbackend.model.Product;
import com.niit.guitarbackend.model.Supplier;

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

		model.addAttribute("product", new Product());
		model.addAttribute("productlist", productlist);
		model.addAttribute("categorylist", categorylist);
		model.addAttribute("supplierlist", supplierlist);
		return "product";
	}

	@RequestMapping("/saveproduct")
	public String saveProduct(@ModelAttribute("product") Product product, Model model) {

		Product searchproduct = (Product) productDAO.search(product.getProductid());
		/*
		 * searching the category object in the db table by using
		 * category.categoryid value if its found then it will be stored in
		 * searchcategory ref variable
		 */
		if ((searchproduct != null) && (searchproduct.getProductid().equals(product.getProductid()))) {
			productDAO.update(product);
		} else {
			productDAO.save(product);
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
