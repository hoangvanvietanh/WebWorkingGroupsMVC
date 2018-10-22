package com.java.vakapu.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.java.vakapu.entity.Team;
import com.java.vakapu.entity.TeamMember;
import com.java.vakapu.entity.TeamMemberTeamProject;
import com.java.vakapu.entity.TeamProject;
import com.java.vakapu.services.ProjectServices;
import com.java.vakapu.services.TeamMemberServices;
import com.java.vakapu.services.TeamServices;

@Controller
@RequestMapping("/")
public class SignInController {
	@Autowired
	private AuthenticationTrustResolver authenticationTrustResolver;

	@Autowired
	private TeamMemberServices teamMemberServices;
	
	@Autowired
	private ProjectServices projectServices;
	
	@Autowired
	private TeamServices teamServices;
	
	@GetMapping
	public String index() {
		return "redirect:/sign-in";
	}

	@GetMapping(value = "/sign-in")
	public String login(ModelMap model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authenticationTrustResolver.isAnonymous(authentication)) {
			return "sign-in";
		}

		return "redirect:/home";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutPage() {
		
		List<TeamMember> memberStore = teamMemberServices.findAll();
		for (TeamMember t : memberStore) {
			int id = t.getTeam().getIdTeam();
			Team team2 = teamServices.findById(id);
			List<TeamMember> member = teamMemberServices.findByIdTeam(id);
			List<TeamMemberTeamProject> teamProject2 = projectServices.findByIdTeam(id);
			Set<Integer> listProject = new HashSet<>();
			List<TeamProject> teamProjects = new ArrayList<>();
			for (TeamMemberTeamProject t3 : teamProject2) {
				listProject.add(t3.getTeamProject().getId());
			}
			for (Integer p : listProject) {
				teamProjects.add(projectServices.find(p));
			}
			team2.setProjectAmount(teamProjects.size());
			team2.setMemberAmount(member.size());
			teamServices.updateTeam(team2);
		}
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			SecurityContextHolder.getContext().setAuthentication(null);
		}
		return "redirect:/sign-in";
	}

	@RequestMapping(value = "/denied", method = RequestMethod.GET)
	public String accessDeniedPage(ModelMap model) {
		return "denied";
	}
	
	
	
	
}
