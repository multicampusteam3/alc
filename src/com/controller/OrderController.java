package com.controller;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.frame.Biz;
import com.vo.Orders;

@Controller
public class OrderController {
	@Resource(name="obiz")
	Biz biz;
	
	@RequestMapping("/order.alc")
	public ModelAndView order(Orders order,HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("forward:orderdetail.alc");
		System.out.println(order);
		try {
			biz.register(order);
		} catch (Exception e) {
			System.out.println("faiallllald");
			e.printStackTrace();
		}
		return mav;
	}
	
	
}
