package com.java.vakapu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.vakapu.entity.NotificationSystem;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.NotificationsSystemServices;

@Controller
@RequestMapping("/home")
public class HomeController {
	@Autowired
	private AccountServices accountServices;
	
	@Autowired
	private NotificationsSystemServices notificationsSystemServices ;
	
	@GetMapping
	public String home(Model model) {
		String emailUser = accountServices.getEmailUser();
		
		List<NotificationSystem> listMes = notificationsSystemServices.findByEmail(emailUser);
		model.addAttribute("emailUser", emailUser);
		model.addAttribute("messages", listMes);
		return "home";
	}

	@PostMapping
	public String handelHome(Model model)  {

		return "redirect:/home";
	}
}
