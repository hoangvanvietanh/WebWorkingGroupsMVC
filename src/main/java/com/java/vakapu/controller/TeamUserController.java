package com.java.vakapu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.java.vakapu.entity.Project;
import com.java.vakapu.entity.Team;
import com.java.vakapu.entity.TeamMember;
import com.java.vakapu.entity.User;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.TeamServices;
import com.java.vakapu.services.TeamUserServices;

@Controller
@SessionAttributes("idTeam")
@RequestMapping("/team2")
public class TeamUserController {
	
	@Autowired
	private AccountServices accountServices;
	
	@Autowired
	private TeamUserServices teamUserServices;
	
	@Autowired
	private TeamServices teamServices;
	
	@GetMapping
	public String getInfoProject(@RequestParam("idTeam") int idTeam,Model model, ModelMap modelMap) {
		String emailUser = accountServices.getEmailUser();
		Team team = teamServices.findById(idTeam);
		List<TeamMember> user = teamUserServices.findUserByIdTeam(idTeam);
		model.addAttribute("team", team);
		model.addAttribute("user", user);
		model.addAttribute("emailUser", emailUser);
		
		return "team";
	}

	@PostMapping
	public String handleProject(Model model) {

		return "redirect:/manage";
	}

}
