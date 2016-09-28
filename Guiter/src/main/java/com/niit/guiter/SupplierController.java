package com.niit.guiter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.guitarbackend.dao.CategoryDAO;
import com.niit.guitarbackend.dao.SupplierDAO;
import com.niit.guitarbackend.model.Category;
import com.niit.guitarbackend.model.Supplier;

@Controller

public class SupplierController {

	@Autowired
	SupplierDAO supplierDAO;
	@RequestMapping("/supplier")
	public String getSupplierPage(Model model)
	{
		List<Supplier> supplierlist=supplierDAO.list();
		
		model.addAttribute("supplier",new Supplier());
		model.addAttribute("supplierlist", supplierlist);
		return "supplier";
	}
	
	@RequestMapping("/savesupplier")
    public String saveSupplier(@ModelAttribute("supplier") Supplier supplier,Model model){

		Supplier searchsupplier=(Supplier)supplierDAO.search(supplier.getSupplierid());/* searching the category object in the db table by using category.categoryid value
		 																			   if its found then it will be stored in searchcategory ref variable*/
		if((searchsupplier!=null) &&(searchsupplier.getSupplierid().equals(supplier.getSupplierid()))){ /* if searchcategory is not null and if searchcategory.categoryid value
			   																							matches with the category.categoryid then its the same object , hence call update*/ 
			 supplierDAO.update(supplier);
		}
		else{
			 supplierDAO.save(supplier);
		}
		return "redirect:/supplier";
	}

	
	@RequestMapping(value="/deletesupplier/{id}")
	public String deleteCategory(@PathVariable("id") String id){
	
		Supplier supplier=supplierDAO.search(id);
		if(supplier!=null){
		supplierDAO.delete(supplier);
		 
		}
		return "redirect:/supplier";

}
	@RequestMapping(value="/editsupplier/{id}")
	public String editSupplier(@PathVariable("id") String id, Model model){
		
		List<Supplier> supplierlist=supplierDAO.list();
		Supplier selectedsupplier=supplierDAO.search(id);
		if(selectedsupplier!=null){
	    model.addAttribute("supplier", selectedsupplier);		
		}
		model.addAttribute("supplierlist", supplierlist);
		return "supplier";
	}
}

