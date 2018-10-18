package com.java.vakapu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.vakapu.services.AccountServices;

@Controller
@RequestMapping("/home")
public class HomeController {
	@Autowired
	private AccountServices accountServices;
	
	@GetMapping
	public String home(Model model) {
		String emailUser = accountServices.getEmailUser();
		model.addAttribute("emailUser", emailUser);
		return "home";
	}

	@PostMapping
	public String handelHome(Model model)  {

		return "redirect:/home";
	}
}
