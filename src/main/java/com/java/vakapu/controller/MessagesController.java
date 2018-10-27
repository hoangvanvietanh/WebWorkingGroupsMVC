package com.java.vakapu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.vakapu.services.AccountServices;

@Controller
@RequestMapping("/messages")
public class MessagesController {

	@Autowired
	private AccountServices accountServices;
	
	@GetMapping
	public String showMessages(Model model) {
		String emailUser = accountServices.getEmailUser();
		model.addAttribute("emailUser", emailUser);
		return "messages";
	}
	
	@PostMapping
	public String handleMessages(Model model) {
		return "redirect:/messages";
	}
}
