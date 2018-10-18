package com.java.vakapu.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.vakapu.entity.TaskTeamProject;
import com.java.vakapu.entity.TeamMemberTaskTeamProject;
import com.java.vakapu.entity.TeamMemberTeamProject;
import com.java.vakapu.entity.TeamProject;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.ProjectServices;
import com.java.vakapu.services.TaskServices;
import com.java.vakapu.services.TeamMemberTeamProjectServices;

@Controller
@RequestMapping("/team-project")
public class ProjectTeamController {

	@Autowired
	private AccountServices accountServices;

	@Autowired
	private ProjectServices proServices;

	@Autowired
	private TeamMemberTeamProjectServices teamProServices;
	
	@Autowired
	private TaskServices taskServices;
	
	@GetMapping
	public String teamProject(@RequestParam("idTeam") int idTeam,@RequestParam("idProject") int idProject,Model model) {
		String emailUser = accountServices.getEmailUser();
//		User user = userServices.findByEmail(emailUser);
		TeamProject teamProject = proServices.find(idProject);
//		TeamProject newProject = new TeamProject();
		List<TeamMemberTeamProject> userStore = teamProServices.findByIdProject(idProject);
		List<TeamMemberTaskTeamProject> task = taskServices.findTaskByIdProject(idProject);
		List<TeamMemberTaskTeamProject> userTaskStore = taskServices.findAll();
//		for(TeamMemberTaskTeamProject t:userTaskStore)
//		{
//			t.getTeamMemberTeamProject().getTeamMember().getMember().getName();
//			t.getTaskTeamProject().getId();
//		}
		Set<Integer> listProject = new HashSet<>();
		List<TaskTeamProject> taskTeam = new ArrayList<>();
		for(TeamMemberTaskTeamProject t: task)
		{
			listProject.add(t.getTaskTeamProject().getId());
		}
		for(Integer p:listProject)
		{
			taskTeam.add(taskServices.findById(p));
		}
//		model.addAttribute("newProject", newProject);
		model.addAttribute("userTask", userTaskStore);
		model.addAttribute("task", taskTeam);
		model.addAttribute("user", userStore);
		model.addAttribute("project", teamProject);
		model.addAttribute("emailUser", emailUser);
		model.addAttribute("idTeam", idTeam);
		return "project-team";
	}

	@PostMapping
	public String handalTeamProject(Model model)  {

		return "redirect:/team-project";
	}
	
	
}
