package com.niit.controllers;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.Dao.CategoryDao;
import com.Dao.ProductDao;
import com.Dao.SupplierDao;
import com.model.Category;
import com.model.Product;
import com.model.Supplier;
import java.sql.Blob;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.springframework.security.crypto.codec.Base64;

@Controller
public class adminController {

    @Autowired
    SupplierDao supplierDaoImpl;

    @Autowired
    CategoryDao categoryDaoImpl;

    @Autowired
    ProductDao productDaoImpl;

    @RequestMapping("/productList")
    public String productList(Model m) {
        List<byte[]> hm = new ArrayList<byte[]>();
        byte[] imgData = null;
        try {
            for (Product product : productDaoImpl.retrieve()) {
                imgData = product.getImage().getBytes(1, (int)(product.getImage().length()));
                imgData = Base64.encode(imgData);

                hm.add(imgData);
                System.out.println("fetching image byte:: "+ imgData);
            }
            
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        m.addAttribute("prodList", productDaoImpl.retrieve());
        m.addAttribute("imageList", hm);
        
        return "productAdminList";
    }

    @RequestMapping("/categoryList")
    public String categoryList(Model m) {
        m.addAttribute("catList", categoryDaoImpl.retrieve());
        return "categoryAdminList";
    }

    @RequestMapping("/supplierList")
    public String supplierList(Model m) {
        m.addAttribute("supList", supplierDaoImpl.retrieve());
        return "supplierAdminList";
    }

    @RequestMapping("/goAEntry")
    public String adminEntry(Model m) {
        m.addAttribute("catList", categoryDaoImpl.retrieve());
        m.addAttribute("supList", supplierDaoImpl.retrieve());
        m.addAttribute("prodList", productDaoImpl.retrieve());
        return "adminEntry";
    }

    //@RequestParam("cid") int cid,
    @RequestMapping(value = "/saveCat", method = RequestMethod.POST)
    @Transactional
    public ModelAndView saveCatData(@RequestParam("cname") String cname) {
        ModelAndView mv = new ModelAndView();
        Category cat = new Category();
        //cat.setCid(cid);
        cat.setCatname(cname);
        categoryDaoImpl.insertCategory(cat);
        mv.setViewName("modal");
        return mv;
    }

//	@RequestParam("sid") int sid,
    @RequestMapping(value = "/saveSup", method = RequestMethod.POST)
    @Transactional
    public ModelAndView saveSupData(@RequestParam("sname") String sname) {
        ModelAndView mv = new ModelAndView();
        Supplier sup = new Supplier();
        //sup.setSid(sid);
        sup.setSupname(sname);
        supplierDaoImpl.insertSupplier(sup);
        mv.setViewName("modal");
        return mv;
    }

    @RequestMapping(value = "/saveProd", method = RequestMethod.POST)
    public ModelAndView saveProdData(HttpServletRequest req, @RequestParam("pFile") MultipartFile file) {
        ModelAndView mv = new ModelAndView();
        Product prod = new Product();
        //prod.setId(Integer.parseInt(req.getParameter("pid")));
        prod.setName(req.getParameter("pName"));
        prod.setPrice(Double.parseDouble(req.getParameter("pPrice")));
        prod.setDescription(req.getParameter("pDescription"));
        prod.setQuality(req.getParameter("pQuality"));
        prod.setRating(req.getParameter("pRating"));
        prod.setReleased(req.getParameter("pReleased"));
        prod.setStock(Integer.parseInt(req.getParameter("pStock")));
        //SimpleDateFormat sf = new SimpleDateFormat("dd/mm/yy");
        //prod.setProddate(sf.parse(req.getParameter("pDate")));
        prod.setCategory(categoryDaoImpl.findByCatId(Integer.parseInt(req.getParameter("pCategory"))));
        prod.setSupplier(supplierDaoImpl.findBySupId(Integer.parseInt(req.getParameter("pSupplier"))));
        prod.setTime(Integer.parseInt(req.getParameter("pTime")));
        prod.setProddate(new Date());

        try {
            Blob blob = productDaoImpl.insertImage(file.getBytes());
            prod.setImage(blob);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        String filepath = req.getSession().getServletContext().getRealPath("/");
        String filename = file.getOriginalFilename();
        prod.setImgname(filename);
        System.out.println(filepath);
//        try {
//            byte[] bfiles = file.getBytes();
//            BufferedOutputStream bos = new BufferedOutputStream(
//                    new FileOutputStream(filepath + "/resources/new/" + filename));
//            bos.write(bfiles);
//            bos.close();
//        } catch (IOException e) {
//            System.out.println(e.getMessage());
//        }
        productDaoImpl.insertProduct(prod);
        mv.setViewName("modal");
        return mv;
    }

    @RequestMapping("/deleteProd/{pid}")
    public String deleteProd(@PathVariable("pid") int pid) {
        productDaoImpl.deleteProd(pid);
        return "redirect:/productList?del";
    }

    @RequestMapping("/deleteSup/{sid}")
    public String deleteSup(@PathVariable("sid") int sid) {
        supplierDaoImpl.deleteSup(sid);
        return "redirect:/supplierList?del";
    }

    @RequestMapping("/deleteCat/{cid}")
    public String deleteCat(@PathVariable("cid") int cid) {
        categoryDaoImpl.deleteCat(cid);
        return "redirect:/categoryList?del";
    }

    @RequestMapping("/updateProd")
    public ModelAndView updateProduct(@RequestParam("id") int pid) {
        ModelAndView mv = new ModelAndView();
        Product p = productDaoImpl.findByProdId(pid);
        mv.addObject("prod", p);
        mv.addObject("catList", categoryDaoImpl.retrieve());
        mv.addObject("supList", supplierDaoImpl.retrieve());
        mv.setViewName("updateProd");
        return mv;
    }

    @RequestMapping(value = "/productUpdate", method = RequestMethod.POST)
    public ModelAndView updateProd(HttpServletRequest req) {
        ModelAndView mv = new ModelAndView();
        Product prod = new Product();
        prod.setId(Integer.parseInt(req.getParameter("pid")));
        prod.setName(req.getParameter("pName"));
        prod.setPrice(Double.parseDouble(req.getParameter("pPrice")));
        prod.setDescription(req.getParameter("pDescription"));
        prod.setQuality(req.getParameter("pQuality"));
        prod.setRating(req.getParameter("pRating"));
        prod.setReleased(req.getParameter("pReleased"));
        prod.setStock(Integer.parseInt(req.getParameter("pStock")));
        String dat2 = req.getParameter("pDate");
        Date sf = null;
        try {
            sf = new SimpleDateFormat("yyyy-MM-dd").parse(dat2);
        } catch (ParseException e) {
            e.printStackTrace();
            System.out.println("couldnt add date");
        }
        prod.setProddate(sf);
        prod.setCategory(categoryDaoImpl.findByCatId(Integer.parseInt(req.getParameter("pCategory"))));
        prod.setSupplier(supplierDaoImpl.findBySupId(Integer.parseInt(req.getParameter("pSupplier"))));
        prod.setTime(Integer.parseInt(req.getParameter("pTime")));
        prod.setImgname(req.getParameter("imgName"));

        productDaoImpl.update(prod);
        mv.addObject("prodList", productDaoImpl.retrieve());
        mv.setViewName("productAdminList");
        return mv;
    }

}
