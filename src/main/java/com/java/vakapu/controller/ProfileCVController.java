package com.java.vakapu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.java.vakapu.entity.User;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.UserServices;

@Controller
@RequestMapping("/profile-cv")
public class ProfileCVController {

	@Autowired
	private AccountServices accountServices;

	@Autowired
	private UserServices userServices;
	
	@GetMapping
	public String create(Model model) {
		String emailUser = accountServices.getEmailUser();
		User user = userServices.findByEmail(emailUser);
		model.addAttribute("user", user);
		return "profile-cv";
	}
}
