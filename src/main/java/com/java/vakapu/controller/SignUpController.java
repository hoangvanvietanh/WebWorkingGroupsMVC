package com.java.vakapu.controller;

import java.text.ParseException;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.java.vakapu.entity.Account;
import com.java.vakapu.model.AccountModel;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.EmailServices;

import utils.RandomCode;

@Controller
@RequestMapping("/sign-up")
public class SignUpController {
	@Autowired
	private AccountServices accountServices;

	@Autowired
	private EmailServices emailServices;
	Account account = new Account();
	
	
	@RequestMapping(method = RequestMethod.GET)
	public String create(Model model) {
		AccountModel account = new AccountModel();
		model.addAttribute("account", account);
		return "sign-up";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String handleCreate(@ModelAttribute("email") String email, BindingResult result, Model model,
			RedirectAttributes redirectAttributes) throws ParseException {
		if (result.hasErrors()) {
			return "sign-up";
		}
		System.out.println(email);
		
//		for (Account u : accountAll) {
//			System.out.println("Email:"+u.getEmail());
//			}
		
		//String emailCheck = accountServices.findByEmail(email).getEmail();
		//System.out.println("|"+emailCheck+"|");
		List<Account> accountAll = accountServices.findAll();
		for (Account u : accountAll) {
			if (!u.getEmail().equals(email)) {
				account.setEmail(email);
				return "redirect:/sign-up/authentication";
			}
		}
		model.addAttribute("message", "Email already");
		return "redirect:/sign-up";
	}

	@RequestMapping(value="/authentication",method = RequestMethod.GET)
	public String checkCode(Model model) {
		System.out.println("Email la:::::::::::::::::::"+account.getEmail());
		RandomCode random = new RandomCode();
		String code = random.getCode();
		model.addAttribute("code", code);
		emailServices.sendSimpleMessage(account.getEmail(), code);
		return "authentication";
	}
	
	@RequestMapping(value = "/authentication", method = RequestMethod.POST)
	public String handleCheckCode(@ModelAttribute("code") String code,@ModelAttribute("codeCheck") String codeCheck, BindingResult result, Model model,
			RedirectAttributes redirectAttributes) throws ParseException {
		if (code.equals(codeCheck)) {
			return "redirect:/sign-up/create-password";
		}
		return "redirect:/sign-up/authentication";
	}

	@RequestMapping(value="/create-password",method = RequestMethod.GET)
	public String createPass(Model model) {
		System.out.println("Qua create");
		model.addAttribute("mode", "create");
		return "create-password";
	}
	
	@RequestMapping(value = "/create-password", method = RequestMethod.POST)
	public String handleCreatePass(@ModelAttribute("pass") String pass, @ModelAttribute("re_pass") String rePass,
			BindingResult result, Model model, RedirectAttributes redirectAttributes) throws ParseException {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		account.setPassword(passwordEncoder.encode(pass));
		accountServices.createAccount(account);

		return "/";
	}

}
