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

import com.java.vakapu.entity.ProjectHistory;
import com.java.vakapu.entity.TaskTeamProject;
import com.java.vakapu.entity.TeamMemberTaskTeamProject;
import com.java.vakapu.entity.TeamMemberTeamProject;
import com.java.vakapu.entity.TeamProject;
import com.java.vakapu.entity.User;
import com.java.vakapu.model.TaskModel;
import com.java.vakapu.model.TeamProjectModel;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.HistoryServices;
import com.java.vakapu.services.ProjectServices;
import com.java.vakapu.services.TaskServices;
import com.java.vakapu.services.TeamMemberTeamProjectServices;
import com.java.vakapu.services.UserServices;

import utils.Activity;

@Controller
@SessionAttributes({"idproject","idteam"})
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
							
	@Autowired
	private UserServices userServices;
	
	@Autowired
	private TeamMemberTeamProjectServices teamMemberTeamProjectDAO;
	
	@Autowired
	private HistoryServices historyServices;
	
	@GetMapping
	public String teamProject(@ModelAttribute("idteam") int idTeam,@RequestParam("idProject") int idProject,Model model,ModelMap modelMap) {
		String emailUser = accountServices.getEmailUser();
		User user = userServices.findByEmail(emailUser);
		TeamProject teamProject = proServices.find(idProject);
		TeamProject editProject=proServices.find(idProject);
		modelMap.put("idproject", idProject);
		
		List<ProjectHistory> proHis = historyServices.findByIdProject(idProject);
//		for(ProjectHistory p:proHis)
//		{
//			System.out.println( "Testt"+p.getUser() + p.getActivity() + p.getLast());
//		}
		List<TeamMemberTeamProject> userStore = teamProServices.findByIdProject(idProject);
		List<TeamMemberTaskTeamProject> task = taskServices.findTaskByIdProjectAll(idProject);
		List<TeamMemberTaskTeamProject> userTaskStore = taskServices.findAll();
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
		int taskDone = taskServices.findTaskDoneByIdProject(idProject);
		teamProject.setTaskDone(taskDone);
		teamProject.setTotalTask(taskTeam.size());
		proServices.updateProject(teamProject);
		TeamProjectModel edit=new TeamProjectModel();
		TaskModel taskModel = new TaskModel();
		edit.fromProject(editProject);
		model.addAttribute("editProject", edit);
		model.addAttribute("history", proHis);
		model.addAttribute("taskModel", taskModel);
		model.addAttribute("userTask", userTaskStore);
		model.addAttribute("task", taskTeam);
		model.addAttribute("user", userStore);
		model.addAttribute("project", teamProject);
		model.addAttribute("emailUser", emailUser);
		model.addAttribute("idTeam", idTeam);
		model.addAttribute("userLogin", user);
		
		return "project-team";
	}

	@PostMapping
	public String handalTeamProject(Model model)  {

		return "redirect:/team-project";
	}
	
	@RequestMapping(value="/create-task",method=RequestMethod.POST)
	public String createTeam(@ModelAttribute("idproject") int idProject,@ModelAttribute("idteam") int idTeam,@ModelAttribute("taskModel") TaskModel taskModel,
			BindingResult result,Model model) throws ParseException
	{
		if(taskModel.getEmail().length==0)
		{
			return "redirect:/team-project?idProject="+idProject+"&idTeam="+idTeam;
		}
		String emailUser = accountServices.getEmailUser();
		User user = userServices.findByEmail(emailUser);
		TaskTeamProject task = taskModel.toTask();
		task.setOwner(emailUser);
		task.setCompleted(0);
		TaskTeamProject task2 =taskServices.create(task);
		String[] emailStore = taskModel.getEmail();
		TeamProject pro = proServices.find(idProject);
		ProjectHistory proHis = new ProjectHistory();
		proHis.setUser(user.getName());
		proHis.setActivity(Activity.ADDTASK);
		proHis.setLast(task2.getName());
		proHis.setTeamProject(pro);
		proHis.setId_user(emailUser);
		proHis.setId_last(task2.getId());
		historyServices.create(proHis);
		
		for(String t:emailStore)
		{
			TeamMemberTeamProject memberPro = teamMemberTeamProjectDAO.findByEmailUser(t, idProject);
			TeamMemberTaskTeamProject taskTeam = new TeamMemberTaskTeamProject();
			taskTeam.setTeamMemberTeamProject(memberPro);
			taskTeam.setTaskTeamProject(task2);
			taskServices.createMemberTask(taskTeam);
		}
		return "redirect:/team-project?idProject="+idProject+"&idTeam="+idTeam;
	}
	
	@RequestMapping(value="/edit-project",method=RequestMethod.POST)
	public String editProject(@ModelAttribute("editProject") TeamProjectModel editProject,
			Model model, BindingResult result) throws ParseException
	{
		if(result.hasErrors())
		{
			return "redirect:/team-project";
		}
		
		TeamProject a=editProject.toProject();	
		proServices.updateProject(a);
		return "redirect:/team-project?idProject="+a.getId();
	}
}
	

