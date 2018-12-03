package com.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.frame.Biz;
import com.vo.Product;

@Controller
public class ProductController {
	
	@Resource(name = "pbiz")
	Biz<Integer, Product> biz;

	@RequestMapping("padd.alc")
	public ModelAndView padd() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");
		mav.addObject("center", "product/register");
		
		return mav;
	}
	
	
}	
