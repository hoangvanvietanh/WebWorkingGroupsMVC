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
import com.java.vakapu.entity.User;
import com.java.vakapu.model.AccountModel;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.EmailServices;
import com.java.vakapu.services.UserServices;

import utils.RandomCode;

@Controller
@SessionAttributes("email")
@RequestMapping("/sign-up")
public class SignUpController {
	@Autowired
	private AccountServices accountServices;

	@Autowired
	private EmailServices emailServices;

	@Autowired
	private UserServices userServices;
	
	@RequestMapping(method = RequestMethod.GET)
	public String create(Model model) {
		AccountModel account = new AccountModel();
		model.addAttribute("account", account);
		return "sign-up";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String handleCreate(@ModelAttribute("emailSignUp") String emailSignUp, BindingResult result, ModelMap model,
			RedirectAttributes redirectAttributes) throws ParseException {
		if (result.hasErrors()) {
			return "sign-up";
		}
		model.put("email", emailSignUp);
		List<Account> accountAll = accountServices.findAll();
		for (Account u : accountAll) {
			if (u.getEmail().equals(emailSignUp)) {

				model.addAttribute("message", "Email already");
				model.remove("email");
				return "redirect:/sign-up";
			}
		}
		return "redirect:/sign-up/authentication";
	}

	@RequestMapping(value = "/authentication", method = RequestMethod.GET)
	public String checkCode(@ModelAttribute("email") String email, Model model) {
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
			return "redirect:/sign-up/create-password";
		}
		return "redirect:/sign-up/authentication";
	}

	@RequestMapping(value = "/create-password", method = RequestMethod.GET)
	public String createPass(Model model) {
		System.out.println("Qua create");
		model.addAttribute("mode", "create");
		return "create-password";
	}

	@RequestMapping(value = "/create-password", method = RequestMethod.POST)
	public String handleCreatePass(@ModelAttribute("email") String email, @ModelAttribute("pass") String pass,
			@ModelAttribute("re_pass") String rePass, BindingResult result, ModelMap model,
			RedirectAttributes redirectAttributes) throws ParseException {
		if (pass.equals(rePass)) {
			Account account = new Account();
			BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			account.setEmail(email);
			account.setPassword(passwordEncoder.encode(pass));
			accountServices.createAccount(account);
			
			User user = new User();
			user.setEmail(email);
			user.setAvartar("notexist.png");
			userServices.createProfile(user);
			model.remove("email");
			return "redirect:/";
		}
		return "redirect:/sign-up/create-password";

	}
	
	

}
