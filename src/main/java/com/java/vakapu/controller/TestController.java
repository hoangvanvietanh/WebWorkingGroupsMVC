package com.java.vakapu.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.java.vakapu.entity.Account;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.EmailServices;

@Controller
@RequestMapping("/test")
public class TestController {
	@Autowired
	private AccountServices ac;
	
	@Autowired
	private EmailServices emai;
	
	@RequestMapping(method = RequestMethod.GET)
	public String list(Model model) {
//		List<Account> acs = ac.findAll();
//		emai.sendSimpleMessage();
//		for(Account a:acs)
//		{
//			System.out.println("email la:" + a.getEmail() + "status: " +a.getStatus() );
//		}
//		
		return "test";
	}
}
