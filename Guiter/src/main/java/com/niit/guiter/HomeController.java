package com.niit.guiter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HomeController
{
	@RequestMapping("/")
	public String getIndex()
	{
		
		return "index";
	}
	@RequestMapping("/aboutus")
	public String getaboutus()
	{
		
		return "aboutus";
	}

	@RequestMapping("/login")
	public String getlogin()
	{
		
		return "login";
		}
	@RequestMapping("/adminhome")
	public String getadminhome()
	{
		
		return "adminhome";
	}
	
	
}
