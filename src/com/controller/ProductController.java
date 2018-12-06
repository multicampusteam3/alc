package com.controller;

import java.io.FileOutputStream;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.frame.Biz;
import com.vo.Product;

@Controller
public class ProductController {
	int k = 0;
	@Resource(name = "pbiz")
	Biz biz;

	@RequestMapping("padd.alc")
	public ModelAndView padd() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");
		mav.addObject("center", "product/register");
		
		return mav;
	}
	@RequestMapping("paddimpl.alc")
	public ModelAndView paddimpl(Product prd) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");
		MultipartFile mf = prd.getMf();
		String img = mf.getOriginalFilename();
		prd.setP_imgname(img);

		byte[] data;
		try {
			data = mf.getBytes();
			FileOutputStream out = new FileOutputStream("c:/spring/alcohol/web/img/" + img);
			out.write(data);
			out.close();
			biz.register(prd);
			mav.addObject("center","product/registerok");
		} catch (Exception e) {
			System.out.println("입력오류오류");
			e.printStackTrace();
		}
		
		return mav;
	}
	@RequestMapping("main.alc")
	public ModelAndView plist() {
		ModelAndView mav = new ModelAndView();
		ArrayList<Product> list = null;
		mav.setViewName("main");
		try {
			list = biz.get();
			mav.addObject("plist", list);
			mav.addObject("center", "product/list");
		} catch (Exception e) {
			System.out.println("상품 리스트 오류");
			e.printStackTrace();
		}
		
		return mav;
	}
	
	@RequestMapping("shop.alc")
	public ModelAndView shop(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		ArrayList<Product> list = null;
		mav.setViewName("shop");
		String sec = (String) req.getParameter("sec");
		if(sec.equals("bg_soju")) {
			k = 100;
		}else if(sec.equals("bg_makuly")) {
			k = 200;
		}else if(sec.equals("bg_beer")) {
			k = 300;
		}else if(sec.equals("bg_whiskey")) {
			k = 400;
		}else if(sec.equals("bg_vodka")) {
			k = 500;
		}else if(sec.equals("bg_wine")) {
			k = 600;
		}else if(sec.equals("bg_etc")) {
			k = 700;
		}
		try {
			
			list = biz.getsec(k);
//			System.out.println(k +" "+ list);
			mav.addObject("plist",list);
			mav.addObject("sec", sec);
			mav.addObject("center", "product/category_list");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	@RequestMapping("/pdetail.alc")
	public ModelAndView pdetail(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		int pid = Integer.parseInt(request.getParameter("pid"));
		String sec = null;
		mav.setViewName("shop");
		try {
			Product product = (Product) biz.get(pid);
			switch (product.getP_code()) {
			case 100:
				sec = "bg_soju";
				break;
			case 200:
				sec = "bg_makuly";
				break;
			case 300:
				sec = "bg_beer";
				break;
			case 400:
				sec = "bg_whiskey";
				break;
			case 500:
				sec = "bg_vodka";
				break;
			case 600:
				sec = "bg_wine";
				break;
			};
//			System.out.println(product);
			mav.addObject("center", "product/single");
			mav.addObject("prd", product);
			mav.addObject("sec", sec);
		} catch (Exception e) {
			System.out.println("실패");
			e.printStackTrace();
		}
		return mav;
	}
	@RequestMapping("/pdelete.alc")
	public ModelAndView pdelete(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String pid = request.getParameter("pid");
		mav.setViewName("main");
		try {
			biz.remove(pid);
			mav.addObject("center", "product/deleteok");
		} catch (Exception e) {

			e.printStackTrace();
		}
		return mav;
	}

	@RequestMapping("/pupdate.alc")
	public ModelAndView pupdate(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String pid = request.getParameter("pid");
		mav.setViewName("main");
		try {
			Product product = (Product) biz.get(pid);
			mav.addObject("center", "product/update");
			mav.addObject("prd", product);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	@RequestMapping("/pupdateimpl.alc")
	public ModelAndView pupdateimpl(Product prd) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");

		try {
			MultipartFile mf = prd.getMf();
			String img = mf.getOriginalFilename();
			if (!img.equals("")) {
				prd.setP_imgname(img);

				byte[] data;
				data = mf.getBytes();
				FileOutputStream out = new FileOutputStream("c:/spring/alcohol/web/img/" + img);
				out.write(data);
				out.close();
			}

			biz.modify(prd);
			mav.addObject("center", "product/updateok");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	
}	
