package com.java.vakapu.controller;

import java.text.ParseException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.java.vakapu.entity.Account;
import com.java.vakapu.entity.Profile;
import com.java.vakapu.model.AccountModel;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.EmailServices;
import com.java.vakapu.services.ProfileServices;

import utils.RandomCode;
import utils.RandomPassword;

@Controller

@RequestMapping("/forgot-password")
public class ForgotPasswordController {
	@Autowired
	private AccountServices accountServices;

	@Autowired
	private EmailServices emailServices;

	@Autowired
	private ProfileServices profileServices;
	
	@RequestMapping(method = RequestMethod.GET)
	public String create(Model model) {
		AccountModel account = new AccountModel();
		model.addAttribute("email", account);
		return "forgot-password";
	}
	
	

//	@RequestMapping(value="/change-password",method=RequestMethod.GET)
//	public String changePasswordGet(@ModelAttribute("emailSignUp") String emailSignUp,BindingResult result, ModelMap model)
//	{
//		
//		if(result.hasErrors())
//		{
//			return"change-password";
//		}
//		model.put("email", emailSignUp);
//		System.out.println(emailSignUp);
//		return "redirect:/forgot-password/change-password";
		
		
	
	
//	@RequestMapping(value="/change-password",method=RequestMethod.POST)
//	public String changePasswordPost(@ModelAttribute("emailSignUp") String emailSignUp, @ModelAttribute("pass") String pass, 
//			@ModelAttribute("re_pass") String rePass,BindingResult result, ModelMap model,
//			RedirectAttributes redirectAttributes) throws ParseException
//	{
//		if(result.hasErrors())
//		{
//			return "redirect:/forgot-password/change-password";
//		}
//		
//		if(pass.equals(rePass))
//		{
//			model.put("email",emailSignUp);
//			Account acc=accountServices.findByEmail(emailSignUp);
//			BCryptPasswordEncoder passwordEncoder=new BCryptPasswordEncoder();
//			acc.setPassword(passwordEncoder.encode(pass));
//			acc.setStatus("active");
//			accountServices.updateAccount(acc);
//		}
//		
//		
//		return "redirect:/sign-in";
//	}

}