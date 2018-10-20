package com.java.vakapu.controller;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.java.vakapu.entity.User;
import com.java.vakapu.model.TeamProjectModel;
import com.java.vakapu.entity.TeamProject;
import com.java.vakapu.entity.Team;
import com.java.vakapu.entity.TeamMember;
import com.java.vakapu.entity.TeamMemberTeamProject;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.UserServices;
import com.java.vakapu.services.ProjectServices;
import com.java.vakapu.services.TeamMemberServices;
import com.java.vakapu.services.TeamMemberTeamProjectServices;
import com.java.vakapu.services.TeamServices;

@Controller
@SessionAttributes("idteam")
@RequestMapping("/team")
public class TeamController {

	@Autowired
	private AccountServices accountServices;

	@Autowired
	private ProjectServices proServices;

	@Autowired
	private TeamServices teamServices;
	
	@Autowired
	private TeamMemberServices teamMemberServices;
	
	@Autowired
	private UserServices userServices;
	
	@Autowired
	private TeamMemberTeamProjectServices memberProjectServices;

	@GetMapping
	public String getInfoProject(@RequestParam("idTeam") int idTeam,Model model, ModelMap modelMap) {
		String emailUser = accountServices.getEmailUser();
		User user = userServices.findByEmail(emailUser);
		Team team = teamServices.findById(idTeam);

		TeamProjectModel newProject= new TeamProjectModel();
		modelMap.put("idteam", idTeam);
		List<TeamMember> member = teamMemberServices.findByIdTeam(idTeam);
		List<TeamMemberTeamProject> teamProject = proServices.findByIdTeam(idTeam);
		List<TeamMemberTeamProject> userProjectStore = proServices.findAll();
		Set<Integer> listProject = new HashSet<>();
		List<TeamProject> teamProjects = new ArrayList<>();
		for(TeamMemberTeamProject t: teamProject)
		{
			listProject.add(t.getTeamProject().getId());
		}
		for(Integer p:listProject)
		{	
			teamProjects.add(proServices.find(p));
		}
		model.addAttribute("newProject", newProject);
		team.setProjectAmount(teamProjects.size());
		team.setMemberAmount(member.size());
		teamServices.updateTeam(team);
		model.addAttribute("emailUser", emailUser);
		model.addAttribute("project", teamProjects);
		model.addAttribute("member", member);
		model.addAttribute("team", team);
		model.addAttribute("user", userProjectStore);
		model.addAttribute("profile", user);
		
		return "team";
	}

	@PostMapping
	public String handleProject(Model model) {

		return "redirect:/manage";
	}
	
	@RequestMapping(value="/create-project",method=RequestMethod.POST)
	public String createTeam(@ModelAttribute("idteam") int idTeam,@ModelAttribute("newProject") TeamProjectModel newProject,
			BindingResult result,Model model) throws ParseException
	{
		if(result.hasErrors())
		{
			return "redirect:/team-project";
		}
		String email=accountServices.getEmailUser();
		TeamMember team=teamMemberServices.getUserTeam(idTeam, email);
		
		TeamProject a= newProject.toProject();
		TeamProject b= proServices.createProject(a);
		

		TeamMemberTeamProject c= new TeamMemberTeamProject();
		c.setTeamMember(team);
		c.setTeamProject(b);
		memberProjectServices.create(c);
		return "redirect:/team?idTeam="+idTeam;
		
	}
}
