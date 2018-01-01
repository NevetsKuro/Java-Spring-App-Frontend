package com.niit.controllers;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Dao.CategoryDao;
import com.Dao.ProductDao;
import com.Dao.SupplierDao;
import com.model.Category;
import com.model.Product;
import com.model.Supplier;

@Controller
public class adminController {

	@Autowired
	SupplierDao supplierDaoImpl;
	
	@Autowired
	CategoryDao categoryDaoImpl;

	@Autowired
	ProductDao productDaoImpl;
	
	@RequestMapping("/productList")
	public String productList(Model m){
		m.addAttribute("prodList", productDaoImpl.retrieve());
		return "productAdminList";
	}
	
	@RequestMapping("/categoryList")
	public String categoryList(Model m){
		m.addAttribute("catList", categoryDaoImpl.retrieve());
		return "categoryAdminList";
	}
	
	@RequestMapping("/supplierList")
	public String supplierList(Model m){
		m.addAttribute("supList", supplierDaoImpl.retrieve());
		return "supplierAdminList";
	}
	
	@RequestMapping("/goAEntry")
	public String adminEntry(Model m){
		
		m.addAttribute("catList", categoryDaoImpl.retrieve());
		m.addAttribute("supList", supplierDaoImpl.retrieve());
		m.addAttribute("prodList", productDaoImpl.retrieve());
		return "adminEntry";
	}
	
	@RequestMapping(value="/saveCat",method=RequestMethod.POST)
	@Transactional
	public ModelAndView saveCatData(@RequestParam("cid")int cid,@RequestParam("cname")String cname)
	{
		ModelAndView mv = new ModelAndView();
		Category cat = new Category();
		cat.setCid(cid);cat.setCatname(cname);
		categoryDaoImpl.insertCategory(cat);
		mv.setViewName("adminEntry");
		return mv;
	}
	
	@RequestMapping(value="/saveSup",method=RequestMethod.POST)
	@Transactional
	public ModelAndView saveSupData(@RequestParam("sid")int sid,@RequestParam("sname")String sname)
	{
		ModelAndView mv = new ModelAndView();
		Supplier sup = new Supplier();
		sup.setSid(sid);sup.setSupname(sname);
		supplierDaoImpl.insertSupplier(sup);
		mv.setViewName("adminEntry");
		return mv;
	}
	
	@RequestMapping(value="/saveProd",method=RequestMethod.POST)
	public ModelAndView saveProdData(HttpServletRequest req)
	{
		ModelAndView mv = new ModelAndView();
		Product prod = new Product();
		prod.setId(Integer.parseInt(req.getParameter("pid")));
		prod.setName(req.getParameter("pName"));
		prod.setPrice(Double.parseDouble(req.getParameter("pPrice")));
		prod.setDescription(req.getParameter("pDescription"));
		prod.setQuality(req.getParameter("pQuality"));
		prod.setReleased(req.getParameter("pReleased"));
		prod.setStock(Integer.parseInt(req.getParameter("pStock")));
		//SimpleDateFormat sf =new SimpleDateFormat("dd/mm/yy");
		//prod.setDate(sf.format(req.getParameter("pDate")));
		prod.setCategory(categoryDaoImpl.findByCatId(Integer.parseInt(req.getParameter("pSupplier"))));
		prod.setSupplier(supplierDaoImpl.findBySuppId(Integer.parseInt(req.getParameter("pCategory"))));
		prod.setTime(Integer.parseInt(req.getParameter("pTime")));
		productDaoImpl.insertProduct(prod);
		mv.setViewName("adminEntry");
		return mv;
	}
	

}
