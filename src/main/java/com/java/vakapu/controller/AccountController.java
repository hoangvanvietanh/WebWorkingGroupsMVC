package com.java.vakapu.controller;

import java.text.ParseException;
import java.util.List;

import javax.sound.midi.Soundbank;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.wiring.BeanWiringInfo;
import org.springframework.http.HttpRequest;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
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
//		Account acc=new Account();
//		account.fromAccount(acc);
		model.addAttribute("account", account);
		return "redirect:/account";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String handleCreate(@ModelAttribute("email") String emailSignUp, BindingResult result, ModelMap model,
			RedirectAttributes redirectAttributes) throws ParseException {
		if (result.hasErrors()) {
			return "sign-up";
		} 
		model.put("email", emailSignUp);
		List<Account> accountAll = accountServices.findAll();
		for (Account u : accountAll) {
			if (u.getEmail().equals(emailSignUp)) {
				RandomPassword random = new RandomPassword();
				BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
				String code = random.getCode();
				model.addAttribute("code", code);
				Account acc = accountServices.findByEmail(emailSignUp);
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

	@RequestMapping(value = "/change-password", method = RequestMethod.GET)
	public String changePasswordGet(ModelMap model, Model mode) {
		String current = accountServices.getEmailUser();
		List<Account> result=accountServices.findAll();
		
		model.put("email", current);
		System.out.println(current);

		Account acc = accountServices.findByEmail(current);
		AccountModel account = new AccountModel();
		account.fromAccount(acc);
		mode.addAttribute("change", account);
		return "change-password";
	}

	@RequestMapping(value = "/change-password", method = RequestMethod.POST)
	public String changePasswordPost(@ModelAttribute("change") AccountModel account,
			@ModelAttribute("oldpass") String oldPass, @ModelAttribute("newpass") String newPass, @ModelAttribute("newre_pass") String newRePass,
			BindingResult result, ModelMap model, RedirectAttributes redirectAttributes) throws ParseException {
		if (result.hasErrors()) {
			return "redirect:/forgot-password/change-password";
		}
		Account a = account.toAccount();
		BCryptPasswordEncoder passwordEncoder=new BCryptPasswordEncoder();
		if(passwordEncoder.matches(oldPass, a.getPassword()))
		{
			if(newPass.equals(newRePass))
			{
				accountServices.deletePassword(a);
				String newP=passwordEncoder.encode(newPass);
				a.setPassword(newP);
				accountServices.updateAccount(a);
				
				Authentication auth = SecurityContextHolder.getContext().getAuthentication();
				if (auth != null) {
					SecurityContextHolder.getContext().setAuthentication(null);
					return "redirect:/sign-in";
				}
			}
		}
	
		
		
		return "redirect:/sign-in";
	}

	@RequestMapping(value = "/deactivate", method = RequestMethod.GET)
	public String deactivate(ModelMap model) {
		String current = accountServices.getEmailUser();
		Account a = accountServices.findByEmail(current);
		a.setStatus("deactive");
		accountServices.updateAccount(a);
		model.remove("email");
	
		return "redirect:/profile";
	}

}
