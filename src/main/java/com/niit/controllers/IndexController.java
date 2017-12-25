package com.niit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.DaoImpl.UserDaoImpl;
import com.model.User;

@Controller
public class IndexController {
	
	UserDaoImpl userDaoImpl;
	
	@RequestMapping("/")
	public String index(){
		return "index";
	}
	
	@RequestMapping("/Home")
	public String homepage()
	{
		return "welcomePage";
	}
	
	@RequestMapping(value="/Register", method=RequestMethod.POST)
	public ModelAndView gotoRegisterPage()
	{
		ModelAndView mv=new ModelAndView();
		//connects the back-end User class and front-end registration page
		mv.addObject("user",new User());
		mv.setViewName("registerPage");
		
		return mv;
	}
	
	@RequestMapping(value="/saveRegister", method=RequestMethod.POST)
	public ModelAndView saveRegister(@ModelAttribute("user")User user, BindingResult result){
		ModelAndView mv=new ModelAndView();
		if(result.hasErrors()){
			mv.setViewName("reisterPage");
		}
		else{
		userDaoImpl.insertUser(user);
		user.setRole("ROLE_USER");
		mv.setViewName("loginPage");
		}
		return mv;
	}
	
}
