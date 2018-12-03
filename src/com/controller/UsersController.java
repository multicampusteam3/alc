package com.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.frame.Biz;
import com.vo.Users;

@Controller
public class UsersController {
	@Resource(name="ubiz")
	Biz<Integer,Users> biz;
	
}
