package com.controller;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.frame.Biz;
import com.vo.Cart;
import com.vo.Orders;
import com.vo.Users;

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
	
	@RequestMapping("/showorders.alc")
	public ModelAndView showorders(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		ArrayList<Cart> list = null;
		mav.setViewName("shop");
		Users user = (Users) session.getAttribute("login_user");
		try {
			list = biz.getsec(user.getUser_id());
			mav.addObject("center", "order");
			mav.addObject("orderlist", list);
		} catch (Exception e) {
			System.out.println("showorder fail");
			e.printStackTrace();
		}
		return mav;
	}
	
	@RequestMapping("/payment.alc")
	public ModelAndView payment() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("shop");
		mav.addObject("center", "payment");
		return mav;
	}
	
}
