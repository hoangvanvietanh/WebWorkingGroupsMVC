package com.java.vakapu.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.protobuf.TextFormat.ParseException;
import com.java.vakapu.entity.Account;
import com.java.vakapu.model.AccountModel;
import com.java.vakapu.services.AccountServices;

@Controller

@RequestMapping("/forgot-password")
public class ForgotPasswordController {
	
	@Autowired
	private AccountServices accountServices;
	@RequestMapping(method = RequestMethod.GET)
	public String homeForgot(Model model) {
//		AccountModel account = new AccountModel();
//		model.addAttribute("account", account);
		return "forgot-password";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String homeForgotPost(@ModelAttribute("email") String email, ModelMap model, Model mode)
	{
		Account acc=accountServices.findByEmail(email);
		if(acc==null)
		{
			model.addAttribute("message", "Your email is not exist");
			return "denied";
		}
		model.addAttribute("email", email);
		List<Account> listAll=accountServices.findAll();
		for(Account a : listAll)
		{
			if(a.getEmail().equals(email))
			{
				AccountModel account=new AccountModel();
				account.fromAccount(a);
				mode.addAttribute("forgot", account);
				
				return "i-forgot";
			}
		}
		return "redirect:/forgot-password";
		
	}
	

	@RequestMapping(value="/i-forgot",method=RequestMethod.POST)
	public String forgotPost( @ModelAttribute("email") String email,
			@ModelAttribute("newpass") String Pass,@ModelAttribute("newre_pass") String RePass ,
			BindingResult result, ModelMap model,
			RedirectAttributes redirectAttributes) throws ParseException
	{
		if(result.hasErrors())
		{
			return "redirect:/forgot-password/change-password";
		}
		
		if(Pass.equals(RePass))
			{
			
				Account acc=accountServices.findByEmail(email);

				if(acc==null)
				{
					return "redirect:/sign-up";
				}

				
				BCryptPasswordEncoder passwordEncoder=new BCryptPasswordEncoder();
				acc.setPassword(passwordEncoder.encode(Pass));
				acc.setStatus("active");
				accountServices.updateAccount(acc);
				return "redirect:/sign-in";
			}
		return "redirect:/forgot-password";
	}
	
	
	

		
}