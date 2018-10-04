package com.java.vakapu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.vakapu.entity.Profile;
import com.java.vakapu.model.ProfileModel;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.ProfileServices;

@Controller
@RequestMapping("/profile")
public class ProfileController {
	
	@Autowired
	private AccountServices accountServices;
	
	@Autowired
	private ProfileServices profileServices;
	
	@GetMapping
	public String showProfile(Model model)
	{	
		Profile profile = profileServices.findByEmail(accountServices.getEmailUser());
		ProfileModel profileModel = new ProfileModel();
		profileModel.fromProfile(profile);
		
		model.addAttribute("profile", profileModel);
		
		return "profile";
	}
	
	@PostMapping
	public String updateProfile(Model model, @ModelAttribute("profile") Profile profile)
	{
		profileServices.updateProfile(profile);
		return "redirect:/profile";
	}
}
