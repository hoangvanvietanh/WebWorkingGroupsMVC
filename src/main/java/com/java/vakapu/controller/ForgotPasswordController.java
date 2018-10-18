package com.java.vakapu.controller;


<<<<<<< HEAD
=======
import javax.jws.WebParam.Mode;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
>>>>>>> branch 'master' of https://github.com/hoangvanvietanh/WebWorkingGroupsMVC.git
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.java.vakapu.model.AccountModel;

@Controller

@RequestMapping("/forgot-password")
public class ForgotPasswordController {
	
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