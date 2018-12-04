package com.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.frame.Biz;
import com.vo.Cart;

@Controller
public class CartController {
	
	@Resource(name="cbiz")
	Biz biz;
	
	@RequestMapping("addcart.alc")
	public ModelAndView addcart(Cart cart) {
		ModelAndView mav = new ModelAndView();
		System.out.println(cart);
		
		mav.setViewName("redirect:main.alc");
		try {
			biz.register(cart);
			System.out.println("īƮ ���");
		} catch (Exception e) {
			System.out.println("Ȯ���� ����");
			e.printStackTrace();
		}
		return mav;
	}
}
