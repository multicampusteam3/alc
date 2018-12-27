package com.controller;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.frame.Biz;
import com.vo.Expense;

@Controller
public class ExpenseController {
	@Resource(name="ebiz")
	Biz biz;
	
	@RequestMapping("/andinsert.alc")
	public void insert(HttpServletRequest req) {
		int pmtamount = Integer.parseInt(req.getParameter("pmtamount"));
		String pmtdetail = req.getParameter("pmtdetail");
		String types = req.getParameter("types");
		Double lat = Double.parseDouble(req.getParameter("lat"));
		Double lng = Double.parseDouble(req.getParameter("lng"));
		
		System.out.println(lat+" "+lng);
		System.out.println(pmtamount+" "+pmtdetail);
		
		
		Expense expense = new Expense(pmtamount, pmtdetail, "카드", types, lat, lng);
		
		try {
			biz.register(expense);
		} catch (Exception e) {
			System.out.println("오류입니다....ㅅ벌");
			e.printStackTrace();
		}
		
	}
	
	@RequestMapping("/andlist.alc")
	public ModelAndView listall() {
		ModelAndView mav = new ModelAndView();
		ArrayList<Expense> list = null;
		mav.setViewName("androidlist");
		try {
			list = biz.get();
			mav.addObject("list",list);
		} catch (Exception e) {
			System.out.println("list 불러오기 실패");
			e.printStackTrace();
		}
		
		
		return mav;
	}
	
	@RequestMapping("/andlistone.alc")
	public ModelAndView listone() {
		ModelAndView mav = new ModelAndView();
		ArrayList<Expense> list = null;
		mav.setViewName("androidlist");
		try {
			list = biz.getsec("2018-12-28");
			mav.addObject("list",list);
		} catch (Exception e) {
			System.out.println("list 불러오기 실패");
			e.printStackTrace();
		}
		
		
		return mav;
	}
	
}
