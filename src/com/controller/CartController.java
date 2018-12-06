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
import com.vo.Users;

@Controller
public class CartController  {
	
	@Resource(name="cbiz")
	Biz biz;
	
	@RequestMapping("addcart.alc")
	public ModelAndView addcart(Cart cart) {
		ModelAndView mav = new ModelAndView();
		System.out.println(cart);
		
		mav.setViewName("redirect:cartdisplay.alc");
		try {
			biz.register(cart);
			System.out.println("카트 담김");
			mav.addObject("center", "checkout");
		} catch (Exception e) {
			System.out.println("확인좀 잘좀");
			e.printStackTrace();
		}
		return mav;
	}
	
	@RequestMapping("cartdisplay.alc")
	public ModelAndView cartdisplay(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		ArrayList<Cart> list = null;
		Users user = (Users) session.getAttribute("login_user");
		mav.setViewName("shop");
		try {
			list = biz.getsec(user.getUser_id());
			mav.addObject("center", "checkout");
			mav.addObject("cartlist", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	@RequestMapping("cartdelete.alc")
	public ModelAndView cartdel(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String cid = request.getParameter("cid");
		mav.setViewName("redirect:cartdisplay.alc");
		try {
			biz.remove(cid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	@RequestMapping("orderconfirmcartdel.alc")
	public ModelAndView orderconfirm(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String[] cid = request.getParameterValues("cid");
		mav.setViewName("shop");
		for (int i = 0; i < cid.length; i++) {
			try {
				biz.remove(cid[i]);
				
			} catch (Exception e) {
				System.out.println("삭제실패!");
				e.printStackTrace();
			}
		}
		mav.addObject("center", "order");
		return mav;
	}
}
