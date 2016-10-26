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
import com.niit.guitarbackend.dao.UserDAO;
import com.niit.guitarbackend.model.Category;
import com.niit.guitarbackend.model.Product;
import com.niit.guitarbackend.model.Supplier;
import com.niit.guitarbackend.model.User;

@Controller

public class UserController {

	@Autowired
	UserDAO userDAO;
	
	@ModelAttribute("user")
	public User create()
	{
		return new User();
	}
	
	@RequestMapping("/register")
	public String loadRegistrationPage(@ModelAttribute("user") User user,Model model)
	{
		return "registration";
	}
	
	@RequestMapping("/saveuser")
    public String saveUser(@ModelAttribute("user") User user,Model model){

		//User searchuser=(User)UserDAO.search(user.getUserid());/* searching the category object in the db table by using category.categoryid value
		 																			//   if its found then it will be stored in searchcategory ref variable*/
		//if((searchuser!=null) &&(searchuser.getUserid().equals(user.getUserid()))){ /* if searchcategory is not null and if searchcategory.categoryid value
			   																							//matches with the category.categoryid then its the same object , hence call update*/ 
			 userDAO.add(user);
		//}
		//else{
			// userDAO.save(user);
		//}
		return "redirect:/index";
	}

	
	/*@RequestMapping(value="/deleteuser/{id}")
	public String deleteUser(@PathVariable("id") String id){
	
		User user=userDAO.search(id);
		if(user!=null){
		userDAO.delete(user);
		 
		}
		return "redirect:/user";

}*/
}

