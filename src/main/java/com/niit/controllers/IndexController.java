package com.niit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	@RequestMapping("/Home")
	public String homepage()
	{
		return "welcomePage";
	}
	
	@RequestMapping("/Register")
	public String gotoRegisterPage()
	{
		return "registerPage";
	}
}
