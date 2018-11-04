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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.protobuf.TextFormat.ParseException;
import com.java.vakapu.entity.Account;
import com.java.vakapu.model.AccountModel;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.EmailServices;

import utils.RandomCode;

@Controller
@SessionAttributes("Email")
@RequestMapping("/forgot-password")
public class ForgotPasswordController {
	
	@Autowired
	private AccountServices accountServices;
	@Autowired
	private EmailServices emailServices;
	
	@RequestMapping(method = RequestMethod.GET)
	public String homeForgot(Model model) {
		return "forgot-password";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String homeForgotPost(@ModelAttribute("email") String email, ModelMap model, Model mode)
	{
		model.put("Email", email);
		Account acc=accountServices.findByEmail(email);
		if(acc==null)
		{
			model.addAttribute("message", "Your email is not exist");
			return "denied";
		}
		//model.addAttribute("Email", email);
		List<Account> listAll=accountServices.findAll();
		for(Account a : listAll)
		{
			if(a.getEmail().equals(email))
			{
//				AccountModel account=new AccountModel();
//				account.fromAccount(a);
//				mode.addAttribute("forgot", account);
				
				return "redirect:/forgot-password/authentication";
			}
		}
		return "redirect:/forgot-password";
		
	}
	
	@RequestMapping(value = "/authentication", method = RequestMethod.GET)
	public String checkCode(@ModelAttribute("Email") String email, Model model) {
		RandomCode random = new RandomCode();
		String code = random.getCode();
		model.addAttribute("code", code);
		emailServices.sendSimpleMessage(email, code);
		return "authentication";
	}

	@RequestMapping(value = "/authentication", method = RequestMethod.POST)
	public String handleCheckCode(@ModelAttribute("code") String code, @ModelAttribute("codeCheck") String codeCheck,
			BindingResult result, Model model, RedirectAttributes redirectAttributes) throws ParseException {
		if (code.equals(codeCheck)) {
			return "i-forgot";
		}
		return "redirect:/forgot-password/authentication";
	}
	
//	@RequestMapping(value="/i-forgot",method=RequestMethod.GET)
//	public String forgotGet( Model model)
//	{
//		return "i-forgot";
//	}
	
	@RequestMapping(value="/i-forgot",method=RequestMethod.GET)
	public String forgotPost( @ModelAttribute("email") String email, @ModelAttribute("Email") String Email,
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
				System.out.println("email ne ...............................");
				System.out.println(email);
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