package com.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.frame.Biz;
import com.vo.Users;

@Controller
public class MainController {
	@Resource(name="ubiz")
	Biz<String,Users> biz;
	
	@RequestMapping("/main.alc")
	public String main() {
		return "maintest";
	}
	
	@RequestMapping("/login.alc")
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");
		mav.addObject("center", "login");
		return mav;
	}
	@RequestMapping("/logout.alc")
	public String logout(HttpSession session) {
		if(session != null) {
			session.invalidate();
		}
		return "main";
	}
	@RequestMapping("/loginimpl.alc")
	public ModelAndView loginimpl(@RequestParam(value="id",required=true) String id, 
								  @RequestParam(value="pw",required=true) String pwd, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		Users dbusers= null;
		mav.setViewName("main");
		try {
			dbusers = biz.get(id);
			if(dbusers.getPw().equals(pwd)) {
				session.setAttribute("login_cust", dbusers);
				mav.addObject("center", "loginok");
			}else {
				mav.addObject("center", "loginfail");
			}
		} catch (Exception e) {
			mav.addObject("center", "loginfail");
			e.printStackTrace();
		}
		
		return mav;
	}


	
}
