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
	
//	@RequestMapping("/main.alc")
//	public String main() {
//		return "main";
//	}
	
	
	@RequestMapping("/logout.alc")
	public String logout(HttpSession session) {
		if(session != null) {
			session.invalidate();
		}
		return "redirect:main.alc";
	}
	@RequestMapping("/login.alc")
	public ModelAndView loginimpl(@RequestParam(value="id",required=true) String id, 
								  @RequestParam(value="pw",required=true) String pwd, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		Users dbusers= null;
		mav.setViewName("redirect:main.alc");
		try {
			dbusers = biz.get(id);
			if(dbusers.getPw().equals(pwd)) {
				session.setAttribute("login_user", dbusers);
			}else {
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return mav;
	}
	@RequestMapping("/register.alc")
	public ModelAndView registerimpl(Users user, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");
		try {
			biz.register(user);
			session.setAttribute("login_user", user);
			mav.addObject("center", "registerok");
		} catch (Exception e) {
			mav.addObject("center", "registerfail");
			e.printStackTrace();
		}
		return mav;
	}

	
}
