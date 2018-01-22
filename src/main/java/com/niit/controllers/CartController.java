package com.niit.controllers;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Dao.CartDao;
import com.Dao.CategoryDao;
import com.Dao.OrdersDao;
import com.Dao.ProductDao;
import com.Dao.SupplierDao;
import com.Dao.UserDao;
import com.model.Cart;
import com.model.Orders;
import com.model.User;

@Controller
public class CartController {

	@Autowired
	SupplierDao supplierDaoImpl;

	@Autowired
	CategoryDao categoryDaoImpl;

	@Autowired
	ProductDao productDaoImpl;

	@Autowired
	UserDao userDaoImpl;
	
	@Autowired
	CartDao cartDaoImpl;
	
	@Autowired
	OrdersDao ordersDaoImpl;
	
	@RequestMapping("/productBuy")
	public ModelAndView displayProductsDetails(@RequestParam("pid")int pid){
		ModelAndView mv = new ModelAndView();
		mv.addObject("prod", productDaoImpl.findByProdId(pid));
		mv.setViewName("ProductBuy");
		return mv;
	}
	
	@RequestMapping(value="/addToCart",method=RequestMethod.POST)
	public ModelAndView addToCart(HttpServletRequest req)
	{
		ModelAndView mv = new ModelAndView();
		Principal principal = req.getUserPrincipal();
		String username = principal.getName();
		System.out.println("the username::"+username);
		try{
			int pid = Integer.parseInt(req.getParameter("pid"));
			Double price = Double.parseDouble(req.getParameter("pPrice"));
			int qty = Integer.parseInt(req.getParameter("pQty"));
			String pname = req.getParameter("pName");
			String imgName = req.getParameter("imgName");
			Cart cartExist = cartDaoImpl.getByCartID(pid,username);
			
			if(cartExist==null){
				Cart cm =new Cart();
				cm.setCartPrice(price);
				cm.setCartProductId(pid);
				cm.setCartProductName(pname);
				cm.setCartStock(qty);
				cm.setCartImage(imgName);
				
				User u = userDaoImpl.findUserByName(username);
				cm.setCartUserDetails(u);
				cartDaoImpl.insertCart(cm);
			}else if(cartExist!=null){
				Cart cm =new Cart();
				cm.setCartId(cartExist.getCartId());
				cm.setCartPrice(price);
				cm.setCartProductId(pid);
				cm.setCartProductName(pname);
				cm.setCartStock(cartExist.getCartStock() + qty);
				cm.setCartImage(imgName);
				
				User u = userDaoImpl.findUserByName(username);
				cm.setCartUserDetails(u);
				cartDaoImpl.updateCart(cm);
			}
			mv.addObject("cartInfo",cartDaoImpl.findByCartID(username));
			mv.setViewName("Cart");
			return mv;
		}catch (Exception e) {
			e.printStackTrace();
			mv.addObject("cartInfo",cartDaoImpl.findByCartID(username));
			mv.setViewName("Cart");
			return mv;
		}
	}
	
	@RequestMapping("/deleteCart")
	public ModelAndView deleteItemCart(@RequestParam("cartid")int cid,HttpServletRequest req){
		ModelAndView mv = new ModelAndView();
		String username = req.getUserPrincipal().getName();
		cartDaoImpl.deleteCart(cid);
		mv.addObject("cartInfo",cartDaoImpl.findByCartID(username));
		mv.setViewName("Cart");
		return mv;
	}
	
	@RequestMapping("/showCart")
	public ModelAndView showItemsInCart(HttpServletRequest req){
		ModelAndView mv = new ModelAndView();
		String username = req.getUserPrincipal().getName();
		mv.addObject("cartInfo",cartDaoImpl.findByCartID(username));
		mv.setViewName("Cart");
		return mv;
	}
	
	@RequestMapping(value="/checkout",method=RequestMethod.GET)
	public ModelAndView checkoutProcess(HttpServletRequest req){
		ModelAndView mv = new ModelAndView();
		Principal principal = req.getUserPrincipal();
		String username = principal.getName();
		User u = userDaoImpl.findUserByName(username);
		List<Cart> cart = cartDaoImpl.findByCartID(username);
		mv.addObject("user",u);
		mv.addObject("cart", cart);
		mv.setViewName("checkout");
		return mv;
	}
	
	@RequestMapping(value="/orderprocess", method = RequestMethod.POST)
	public ModelAndView orderProcess(HttpServletRequest req){
		ModelAndView mv = new  ModelAndView();
		Orders order = new Orders();
		Principal principal = req.getUserPrincipal();
		String username = principal.getName();
		Double total = Double.parseDouble(req.getParameter("total"));
		
		String payment = req.getParameter("payment");
		//changes
		//		List<Cart> cart = cartDaoImpl.findByCartID(username);
		//		System.out.println(cart.get(5));
		//		productDaoImpl.findStockByProdId(cart.get(5).toString());
		User u = userDaoImpl.findUserByName(username);
		order.setUser(u);
		order.setTotal(total);
		order.setPayment(payment);
		ordersDaoImpl.insertOrders(order);
		mv.addObject("orderDetails",u);
		mv.setViewName("ack");
		return mv;
	}
}
