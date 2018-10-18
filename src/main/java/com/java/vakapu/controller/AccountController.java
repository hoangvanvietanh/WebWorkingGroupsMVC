package com.java.vakapu.controller;

import java.text.ParseException;
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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.java.vakapu.entity.Account;
import com.java.vakapu.model.AccountModel;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.EmailServices;

import utils.RandomPassword;

@Controller
@SessionAttributes("email")
@RequestMapping("/account")
public class AccountController {
	@Autowired
	private AccountServices accountServices;

	@Autowired
	private EmailServices emailServices;
	
	@RequestMapping(method = RequestMethod.GET)
	public String create(Model model) {
		AccountModel account = new AccountModel();
		model.addAttribute("account", account);
		return "redirect:/account";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String handleCreate(@ModelAttribute("email") String emailSignUp, BindingResult result, ModelMap model,
			RedirectAttributes redirectAttributes) throws ParseException {
		if (result.hasErrors()) {
			return "sign-up";
		}
		// System.out.println(email);
		model.put("email", emailSignUp);
		List<Account> accountAll = accountServices.findAll();
		for (Account u : accountAll) {
			if (u.getEmail().equals(emailSignUp)) {
				RandomPassword random = new RandomPassword();
				BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
				String code = random.getCode();
				model.addAttribute("code", code);
				Account acc= accountServices.findByEmail(emailSignUp);
				emailServices.sendSimpleMessage(emailSignUp, code);
				acc.setPassword(passwordEncoder.encode(code));
				accountServices.updateAccount(acc);
				return "redirect:/sign-in";
			}
		}
		return "redirect:/forgot-password";
	}


	@RequestMapping(value = "/authentication", method = RequestMethod.GET)
	public String checkCode(@ModelAttribute("email") String email, Model model) {
		
		return "redirect:/sign-in";
	}
	

	@RequestMapping(value="/change-password",method=RequestMethod.GET)
	public String changePasswordGet(ModelMap model, Model mode)
	{
		String current= accountServices.getEmailUser();
		model.put("email", current);
		System.out.println(current);
		
		Account acc= accountServices.findByEmail(current);
		AccountModel account= new AccountModel();
		account.fromAccount(acc);
		mode.addAttribute("account", account);
		return "change-password";
	}		
		
	
	
	@RequestMapping(value="/change-password",method=RequestMethod.POST)
	public String changePasswordPost(@ModelAttribute("account") AccountModel account, @ModelAttribute("oldpass") String oldPass, 
			@ModelAttribute("oldPass") String oldPassword,
			@ModelAttribute("newpass") String newPass,@ModelAttribute("newre_pass") String newRePass ,
			BindingResult result, ModelMap model,
			RedirectAttributes redirectAttributes) throws ParseException
	{
		if(result.hasErrors())
		{
			return "redirect:/forgot-password/change-password";
		}
		if(oldPass.equals(oldPassword))
		{
			if(newPass.equals(newRePass))
			{
				Account acc=account.toAccount();
				//accountServices.deletePassword(acc);
				
				BCryptPasswordEncoder passwordEncoder=new BCryptPasswordEncoder();
				acc.setPassword(passwordEncoder.encode(newRePass));
				acc.setStatus("active");
				accountServices.updateAccount(acc);
			}
		}
		
			
		return "redirect:/sign-in";
	}
	
	@RequestMapping(value="/deactivate",method=RequestMethod.GET)
	public String  deactivate(ModelMap model)
	{
		String current=accountServices.getEmailUser();
		Account a=accountServices.findByEmail(current);
		a.setStatus("deactive");
		accountServices.updateAccount(a);
		return "redirect:/profile";
	}

}