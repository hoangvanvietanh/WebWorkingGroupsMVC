package com.java.vakapu.controller;

import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.java.vakapu.entity.Member;
import com.java.vakapu.entity.Team;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.MemberServices;
import com.java.vakapu.services.ProjectServices;
import com.java.vakapu.services.ProjectUserServices;
import com.java.vakapu.services.TeamServices;

@Controller
@RequestMapping("/manage")
public class ManageController {

	@Autowired
	private AccountServices accountServices;

	@Autowired
	private ProjectUserServices proUserServices;

	@Autowired
	private ProjectServices proServices;

	@Autowired
	private TeamServices teamServices;

	@Autowired
	private MemberServices memberServices;

	@GetMapping
	public String getInfoProject(Model model) {
		String emailUser = accountServices.getEmailUser();
		System.out.println("Email la::::::::::::::::::::::::::::::::::::::::::::::::::::" + emailUser);
		List<Team> team = teamServices.findByEmail(emailUser);
		model.addAttribute("emailUser", emailUser);
		model.addAttribute("team", team);
		
		return "manage";
	}

	@PostMapping
	public String handleProject(Model model) {

		return "redirect:/manage";
	}
	
	@RequestMapping(value = "/searchTeam/{idTeam}", method = RequestMethod.GET)
	public void downloadAvatar(HttpServletResponse response, @PathVariable("idTeam") int id, Model model) throws IOException {
		System.out.println("Vaoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo:::");
		System.out.println("Id la:::::::::::::::::::::::::::::::::::::::::::::::"+id);
		List<Member> member = memberServices.findByIdTeam(id);
		for(Member m: member)
		{
			System.out.println("Tem nguoi tao::::::::::::::::::::::::::::::::::::::::::::::::"+m.getIdmember()+m.getEmail());
		}
		model.addAttribute("member", member);
	}
}
