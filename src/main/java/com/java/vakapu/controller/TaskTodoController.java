package com.java.vakapu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.java.vakapu.entity.TaskTeamProject;
import com.java.vakapu.entity.TeamMemberTaskTeamProject;
import com.java.vakapu.entity.Todo;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.ProjectServices;
import com.java.vakapu.services.TaskServices;
import com.java.vakapu.services.TeamMemberTeamProjectServices;
import com.java.vakapu.services.UserServices;

@Controller
@SessionAttributes({"idproject","idteam"})
@RequestMapping("/task-todo")
public class TaskTodoController {

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

	@GetMapping
	public String teamProject(@RequestParam("idTask") int idTask,@ModelAttribute("idproject") int idProject,Model model, ModelMap modelMap) {
		String emailUser = accountServices.getEmailUser();
		TaskTeamProject task = taskServices.findById(idTask);
		List<TeamMemberTaskTeamProject> listMember = taskServices.findTaskByIdProject(idProject, idTask);
		List<Todo> listTodo = taskServices.findTodoByIdTask(idTask);
		model.addAttribute("todo", listTodo);
		model.addAttribute("member", listMember);
		model.addAttribute("task", task);
		model.addAttribute("emailUser", emailUser);
		return "task-team";
	}

	@PostMapping
	public String handalTeamProject(Model model) {

		return "redirect:/team-project";
	}
}
