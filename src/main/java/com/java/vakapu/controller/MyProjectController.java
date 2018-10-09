package com.java.vakapu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.expression.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.java.vakapu.entity.Project;
import com.java.vakapu.entity.ProjectUser;
import com.java.vakapu.model.ProjectModel;
import com.java.vakapu.model.ProjectUserModel;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.ProjectServices;
import com.java.vakapu.services.ProjectUserServices;


@Controller
@RequestMapping("/myProject")
public class MyProjectController {
	@Autowired
	private AccountServices accountServices;

	@Autowired
	private ProjectUserServices proUserServices;

	@Autowired
	private ProjectServices proServices;
	
	@RequestMapping(method = RequestMethod.GET)
	public String getInfoProject(Model model) {
		List<ProjectUser> project = proUserServices.findByEmail(accountServices.getEmailUser());
		ProjectModel proModel = new ProjectModel();
		model.addAttribute("projectCreate", proModel);
		model.addAttribute("project", project);
		return "myproject";
	}
	
	@RequestMapping(value = "/createProject", method = RequestMethod.POST)
	public String createInfoPost(@ModelAttribute("projectCreate") ProjectModel proModel, BindingResult result,
			Model model) throws ParseException {

		if (result.hasErrors()) {
			return "create-project";
		}
		String currentUser = accountServices.getEmailUser();
		Project projectNull = new Project();
		projectNull.setName("null");
		proServices.createProject(projectNull);
		
		Project project =  proServices.findProjectNull("null");
		System.out.println("Id la:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"+project.getIdproject());
		int id = project.getIdproject();
		
		ProjectUser proUser = new ProjectUser();
		proUser.setIdproject(project);
		proUser.setEmail(currentUser);
		proUser.setRole("Administator");
		proUserServices.createProjectUser(proUser);
		
		
		project = proModel.toProject();	
		project.setOwner(currentUser);
		project.setIdproject(id);
		proServices.updateProject(project);
		
		return "redirect:/profile";
	}

}
