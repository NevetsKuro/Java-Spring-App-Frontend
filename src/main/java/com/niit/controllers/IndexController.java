package com.niit.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Dao.CategoryDao;
import com.Dao.SupplierDao;
import com.Dao.UserDao;
import com.model.Category;
import com.model.Supplier;
import com.model.User;

@Controller
public class IndexController {
	
	@Autowired
	UserDao userDaoImpl;
	
	
	@RequestMapping("/")
	public String index(){
		return "index";
	}
	
	@RequestMapping("/Home")
	public String homepage()
	{
		return "welcomePage";
	}
	
	@RequestMapping("/logIn")
	public String gotoLogin(@ModelAttribute("user")User user)
	{
		return "loginPage";
	}
	
	@RequestMapping(value="/Register", method=RequestMethod.GET)
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
		System.out.println("enterd the method");
		ModelAndView mv=new ModelAndView();
		if(result.hasErrors()){
			mv.setViewName("registerPage");
		}
		else{
		System.out.println("mv initialised");
		user.setRole("ROLE_USER");
		System.out.println("mv initialised");
		userDaoImpl.insertUser(user);
		System.out.println("user class used");
		mv.setViewName("loginPage");
		}
		return mv;
	}
	
	@RequestMapping(value="/loggedIn",method=RequestMethod.POST)
	public String gotoHomePage(HttpServletRequest req,HttpServletResponse res,User user)
	{
		return "HomePage";
//		if(req.getParameter("name")==user.getName()&&req.getParameter("logpassword")==user.getPassword())
//		{
//			return "HomePage";
//		}else{
//			System.out.println("login failed and continued");
//			return "HomePage";
//		}
	}

}
