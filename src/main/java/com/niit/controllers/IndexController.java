package com.niit.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Dao.CategoryDao;
import com.Dao.ProductDao;
import com.Dao.SupplierDao;
import com.Dao.UserDao;
import com.model.User;

@Controller
public class IndexController {

	@Autowired
	SupplierDao supplierDaoImpl;

	@Autowired
	CategoryDao categoryDaoImpl;

	@Autowired
	ProductDao productDaoImpl;

	@Autowired
	UserDao userDaoImpl;

	@RequestMapping("/")
	public String index() {
		return "index";
	}

	@RequestMapping("/head")
	public String head() {
		return "header";
	}
	
	@RequestMapping("/Home")
	public String homepage() {
		return "welcomePage";
	}
	
	@RequestMapping("/HomePage")
	public String Mainpage() {
		return "HomePage";
	}

	@RequestMapping("/goToLogin")
	public String gotoLogin() {
		return "login";
	}
	
	@RequestMapping("/logout")
	public String userLogged(){
		return "welcomePage";
	}
	
	@RequestMapping(value="/userLogged")
	public String userlog(HttpSession hs, User user, HttpServletRequest req){
		
		System.out.println("userlogged");
		if(req.isUserInRole("ROLE_ADMIN")){
			hs = req.getSession();
			hs.setAttribute("sess",req.getUserPrincipal().getName());
		}
		
		hs.setAttribute("catList", categoryDaoImpl.retrieve());
		hs.setAttribute("supList", supplierDaoImpl.retrieve());
		hs.setAttribute("prodList", productDaoImpl.retrieve());
		return "redirect:/HomePage";
	}
	
	@RequestMapping("/Error")
	public String userError(){
		return "Error";
	}
	
	@RequestMapping("/reLogin")
	public String userLogin(){
		return "redirect:/goToLogin";
	}	
	
	@RequestMapping(value = "/Register", method = RequestMethod.GET)
	public ModelAndView gotoRegisterPage() {
		ModelAndView mv = new ModelAndView();
		// connects the back-end User class and front-end registration page
		mv.addObject("user", new User());
		mv.setViewName("registerPage");
		return mv;
	}

	@RequestMapping(value = "/saveRegister", method = RequestMethod.POST)
	public ModelAndView saveRegister(@ModelAttribute("user") User user, BindingResult result) {
		System.out.println("enterd the method");
		ModelAndView mv = new ModelAndView();
		if (result.hasErrors()) {
			mv.setViewName("registerPage");
		} else {
			user.setEnabled(true);
			user.setRole("ROLE_USER");
			userDaoImpl.insertUser(user);
			mv.setViewName("login");
		}
		return mv;
	}


	@RequestMapping("/productCustList")
	public ModelAndView getCustTable(@RequestParam("cid") int cid) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("prodList", productDaoImpl.getProdByCatId(cid));
		//changed from productCustList
		mv.setViewName("ProductCustList");
		return mv;
	}
	
	@RequestMapping("/productDetail")
	public ModelAndView displayProductsDetails(@RequestParam("pid")int pid){
		ModelAndView mv = new ModelAndView();
		mv.addObject("prod", productDaoImpl.findByProdId(pid));
		mv.setViewName("ProductDetails");
		return mv;
	}
	
	@RequestMapping("/prodCatList")
	public ModelAndView getCatTable(@RequestParam("cid") int cid) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("prodList", productDaoImpl.getProdByCatId(cid));
		mv.setViewName("ProductCustList");
		return mv;
	}


	@RequestMapping("/prodSupList")
	public ModelAndView getSupTable(@RequestParam("sid") int sid) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("prodList", productDaoImpl.getProdBySupId(sid));
		mv.setViewName("ProductCustList");
		return mv;
	}

	@RequestMapping("/prodCatListNav")
	public ModelAndView getCatTableNav(@RequestParam("cid") int cid) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("prodList", productDaoImpl.getProdByCatId(cid));
		mv.setViewName("navPages");
		return mv;
	}

	@RequestMapping("/prodSupListNav")
	public ModelAndView getSupTableNav(@RequestParam("sid") int sid) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("prodList", productDaoImpl.getProdBySupId(sid));
		mv.setViewName("navPages");
		return mv;
	}
	
	@ModelAttribute
	public void getData(Model m) {
		m.addAttribute("catList", categoryDaoImpl.retrieve());
	}
}
