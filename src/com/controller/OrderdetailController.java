package com.controller;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.frame.Biz;
import com.vo.Orderdetail;

@Controller
public class OrderdetailController {
	@Resource(name="odbiz")
	Biz biz;
	
	@RequestMapping("/orderdetail.alc")
	public ModelAndView orderdetail(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("forward:orderconfirmcartdel.alc");
		String[] pid = request.getParameterValues("pid");
		String[] pname = request.getParameterValues("pname");
		String[] qt = request.getParameterValues("qt");
		String[] price = request.getParameterValues("price");
		
		System.out.println(pname[0]);
		try {
			for (int i = 0; i < pid.length; i++) {
				Orderdetail ord = new Orderdetail(Integer.parseInt(pid[i]), pname[i], Integer.parseInt(qt[i]), Integer.parseInt(price[i]));
				System.out.println(ord);
				biz.register(ord);
			}
		} catch (Exception e) {
			System.out.println("failÀÔ´Ï");
			e.printStackTrace();
		}
		return mav;
	}
	
	@RequestMapping("/showorderdetail.alc")
	public ModelAndView showorderdetail(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		ArrayList<Orderdetail> list = null;
		mav.setViewName("shop");
		String oid = request.getParameter("oid");
		try {
			list = biz.getsec(oid);
			mav.addObject("center", "orderdetail");
			mav.addObject("detaillist", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	
}
