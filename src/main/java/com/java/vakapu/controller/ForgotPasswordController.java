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
@SessionAttributes("email")
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
		model.addAttribute("account", account);
		return "forgot-password";
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

}