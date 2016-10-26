package com.niit.guiter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.guitarbackend.dao.CategoryDAO;
import com.niit.guitarbackend.model.Category;

@Controller
public class CategoryController {

	@Autowired(required=true)
	 CategoryDAO categoryDAO;
	
	@RequestMapping("/category")
	public String getCategoryPage(Model model)
	{
		List<Category> categorylist=categoryDAO.list();
		
		model.addAttribute("category",new Category());
		model.addAttribute("categorylist", categorylist);
		return "category";
	}

	@RequestMapping("/savecategory")
    public String saveCategory(@ModelAttribute("category") Category category,Model model){

		Category searchcategory=(Category)categoryDAO.search(category.getCategoryid());/* searching the category object in the db table by using category.categoryid value
		 																			   if its found then it will be stored in searchcategory ref variable*/
		if((searchcategory!=null) &&(searchcategory.getCategoryid().equals(category.getCategoryid()))){ /* if searchcategory is not null and if searchcategory.categoryid value
			   																							matches with the category.categoryid then its the same object , hence call update*/ 
			 categoryDAO.update(category);
		}
		else{
			 categoryDAO.save(category);
		}
		return "redirect:/category";
	}
	
	
	@RequestMapping(value="/editcategory/{id}")
	public String editCategory(@PathVariable("id") String id, Model model){
		
		List<Category> categorylist=categoryDAO.list();
		Category selectedcategory=categoryDAO.search(id);
		if(selectedcategory!=null){
	    model.addAttribute("category", selectedcategory);		
		}
		model.addAttribute("categorylist", categorylist);
		return "category";
	}
	
	@RequestMapping(value="/deletecategory/{id}")
	public String deleteCategory(@PathVariable("id") String id){
		System.out.println(id);
		Category category=categoryDAO.search(id);
		if(category!=null){
		categoryDAO.delete(category);
		
		}
		return "redirect:/category";
	}
}
