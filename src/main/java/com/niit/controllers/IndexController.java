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
        return "login";
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
    public String userLogged() {
        return "welcomePage";
    }

    @RequestMapping("/dcmaRequest")
    public String dcmarequest() {
        return "dcmaRequest";
    }

    @RequestMapping("/linkRemoval")
    public String linkremoval() {
        return "linkRemoval";
    }

    @RequestMapping("/terms")
    public String termsofuse() {
        return "Terms";
    }

    @RequestMapping("/privacy")
    public String privacy() {
        return "Privacy";
    }

    @RequestMapping(value = "/userLogged")
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

    @RequestMapping("/Error")
    public String userError() {
        return "Error";
    }

    @RequestMapping("/reLogin")
    public String userLogin() {
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

    @RequestMapping("/prodCatList")
    public ModelAndView getCatTable(@RequestParam("cid") int cid) {
        ModelAndView mv = new ModelAndView();
        List<Product> prodList = productDaoImpl.getProdByCatId(cid);
//        List<String> ls = new ArrayList<String>();  //working
//        HashMap<Integer,String> hm = new HashMap<Integer, String>();
        List<ImageList> hm = new ArrayList<ImageList>();
        try {
            
            InputStream is = prodList.get(0).getImage().getBinaryStream();
            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            byte[] buffer = new byte[4096];
            int bytesRead = -1;

            while ((bytesRead = is.read(buffer)) != -1) {
                outputStream.write(buffer, 0, bytesRead);
            }

            byte[] imageBytes = outputStream.toByteArray();
            String base64Image = Base64.getEncoder().encodeToString(imageBytes);
            prodList.get(0).setImgname(base64Image);
            System.out.println(prodList.get(0).getImgname());
            
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        
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
//                ImageList il = new ImageList();
//                il.setId(product.getId());
//                il.setBase64str(base64Image);
//                hm.add(il);
                is.close();
                outputStream.close();
            }
                mv.addObject("imageList", hm);

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
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

    @RequestMapping("/prodSearch")
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
