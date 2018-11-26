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
import com.model.ImageList;
import com.model.Product;
import com.model.User;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;
import org.springframework.security.core.context.SecurityContextHolder;

@Controller
public class IndexController2 {

    @Autowired
    SupplierDao supplierDaoImpl;

    @Autowired
    CategoryDao categoryDaoImpl;

    @Autowired
    ProductDao productDaoImpl;

    @Autowired
    UserDao userDaoImpl;


    @RequestMapping("/head2")
    public String head() {
        return "header";
    }

    @RequestMapping("/Home2")
    public String homepage() {
        return "welcomePage";
    }

    @RequestMapping("/HomePage2")
    public String Mainpage() {
        return "HomePage2";
    }
    @RequestMapping("/test")
    public String Mainpage2() {
        return "test";
    }
    
    @RequestMapping("/product-List")
    public ModelAndView productlist(@RequestParam("name") String name,@RequestParam("catType") int catType) {
        ModelAndView mv = new ModelAndView();
        System.out.println("Search result for"+ name+" ," + productDaoImpl.findByProdNameFrSearch(name.toLowerCase(),catType));
        List<Product> prodList = productDaoImpl.findByProdNameFrSearch(name.toLowerCase(),catType);
        
        try {
            for (Product product : prodList) {
                InputStream is = product.getImage().getBinaryStream();
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead = -1;

                while ((bytesRead = is.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                }
                byte[] imageBytes = outputStream.toByteArray();
                String base64Image = Base64.getEncoder().encodeToString(imageBytes);
                product.setImgname(base64Image);
                is.close();
                outputStream.close();
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        mv.addObject("prodList", prodList);
        mv.setViewName("Product-List");
        return mv;
    }

    @RequestMapping("/goToLogin2")
    public String gotoLogin() {
        return "login";
    }

    @RequestMapping("/logout2")
    public String userLogged() {
        return "welcomePage";
    }

    @RequestMapping("/dcmaRequest2")
    public String dcmarequest() {
        return "dcmaRequest";
    }

    @RequestMapping("/linkRemoval2")
    public String linkremoval() {
        return "linkRemoval";
    }

    @RequestMapping("/terms2")
    public String termsofuse() {
        return "Terms";
    }

    @RequestMapping("/privacy2")
    public String privacy() {
        return "Privacy";
    }

    @RequestMapping(value = "/userLogged2")
    public String userlog(HttpSession hs, User user, HttpServletRequest req) {

        boolean b = SecurityContextHolder.getContext().getAuthentication().getAuthorities().toString().contains("ADMIN");
        System.out.println("userlogged");
        if (b) {
            hs = req.getSession();
            if (!SecurityContextHolder.getContext().getAuthentication().getName().equals(null)) {
                hs.setAttribute("sess", SecurityContextHolder.getContext().getAuthentication().getName());
            }
        }

        hs.setAttribute("catList", categoryDaoImpl.retrieve());
        hs.setAttribute("supList", supplierDaoImpl.retrieve());
        hs.setAttribute("prodList", productDaoImpl.retrieve());
        return "redirect:/HomePage";
    }

    @RequestMapping("/Error2")
    public String userError() {
        return "Error";
    }

    @RequestMapping("/reLogin2")
    public String userLogin() {
        return "redirect:/goToLogin";
    }

    @RequestMapping(value = "/Register2", method = RequestMethod.GET)
    public ModelAndView gotoRegisterPage() {
        ModelAndView mv = new ModelAndView();
        // connects the back-end User class and front-end registration page
        mv.addObject("user", new User());
        mv.setViewName("registerPage");
        return mv;
    }

    @RequestMapping(value = "/saveRegister2", method = RequestMethod.POST)
    public ModelAndView saveRegister(@ModelAttribute("user") User user, BindingResult result) {
        System.out.println("enterd the method");
        ModelAndView mv = new ModelAndView();
        if (result.hasErrors()) {
            mv.setViewName("registerPage");
        } else {
            user.setRole("ROLE_USER");
            userDaoImpl.insertUser(user);
            mv.setViewName("login");
        }
        return mv;
    }

    @RequestMapping("/productCustList2")
    public ModelAndView getCustTable(@RequestParam("cid") int cid) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("prodList", productDaoImpl.getProdByCatId(cid));
        //changed from productCustList
        mv.setViewName("ProductCustList");
        return mv;
    }

    @RequestMapping("/productDetail2")
    public ModelAndView displayProductsDetails(@RequestParam("pid") int pid) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("prod", productDaoImpl.findByProdId(pid)).isEmpty();
        Product lp = productDaoImpl.findByProdId(pid);
        System.out.println("Boolean is:" + lp);
        if (lp != null) {
            mv.setViewName("ProductDetails");
        } else {
            mv.setViewName("redirect:/HomePage");
        }
        return mv;
    }

    @RequestMapping("/prodCatList2")
    public ModelAndView getCatTable(@RequestParam("cid") int cid) {
        ModelAndView mv = new ModelAndView();
        List<Product> prodList = productDaoImpl.getProdByCatId(cid);
        mv.addObject("prodList", prodList);

        try {
            for (Product product : prodList) {
                InputStream is = product.getImage().getBinaryStream();
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead = -1;

                while ((bytesRead = is.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                }

                byte[] imageBytes = outputStream.toByteArray();
                String base64Image = Base64.getEncoder().encodeToString(imageBytes);
                product.setImgname(base64Image);
                is.close();
                outputStream.close();
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        mv.setViewName("productListView1");
        return mv;
    }

    @RequestMapping("/prodSupList2")
    public ModelAndView getSupTable(@RequestParam("sid") int sid) {
        ModelAndView mv = new ModelAndView();
        List<Product> prodList = productDaoImpl.getProdBySupId(sid);
        
        try {
            for (Product product : prodList) {
                InputStream is = product.getImage().getBinaryStream();
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead = -1;

                while ((bytesRead = is.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                }

                byte[] imageBytes = outputStream.toByteArray();
                String base64Image = Base64.getEncoder().encodeToString(imageBytes);
                product.setImgname(base64Image);
                is.close();
                outputStream.close();
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        mv.addObject("prodList", prodList);
        mv.setViewName("productListView1");
        return mv;
    }

    @RequestMapping("/prodCatListNav2")
    public ModelAndView getCatTableNav(@RequestParam("cid") int cid) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("prodList", productDaoImpl.getProdByCatId(cid));
        mv.setViewName("navPages");
        return mv;
    }

    @RequestMapping("/prodSupListNav2")
    public ModelAndView getSupTableNav(@RequestParam("sid") int sid) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("prodList", productDaoImpl.getProdBySupId(sid));
        mv.setViewName("navPages");
        return mv;
    }

    @RequestMapping("/prodSearch2")
    public ModelAndView productSearched(@RequestParam("pname") String pname) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("prodList", productDaoImpl.findByProdNameFrSearch(pname.toLowerCase()));
        mv.setViewName("navPages");
        return mv;
    }

    @ModelAttribute
    public void getData(Model m) {
        m.addAttribute("catList", categoryDaoImpl.retrieve());
    }

}
