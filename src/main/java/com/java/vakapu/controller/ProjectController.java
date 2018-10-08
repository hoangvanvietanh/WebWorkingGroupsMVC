package com.java.vakapu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.expression.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.java.vakapu.entity.Project;

import com.java.vakapu.entity.ProjectUser;
import com.java.vakapu.model.ProjectModel;

import com.java.vakapu.model.ProjectUserModel;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.ProjectServices;

import com.java.vakapu.services.ProjectUserServices;

@Controller
@RequestMapping("/project")
public class ProjectController {

	@Autowired
	private AccountServices accountServices;
	
	@Autowired
	private ProjectUserServices userServices;
	
	@Autowired
	private ProjectServices proServices;
	
	@RequestMapping(method=RequestMethod.GET)
	public String getInfoProject(Model model)
	{
		List<Project> result= proServices.findAll();
		model.addAttribute("listInfo",result);
		return "home-project";
	}
	
	@RequestMapping(value="/createProject",method=RequestMethod.GET)
	public String createInfoGet(Model model) throws ParseException
	{
		ProjectModel pro=new ProjectModel();
		model.addAttribute("createProject", pro);
		return "create-project";
	}
	
	@RequestMapping(value="/createProject",method=RequestMethod.POST)
	public String createInfoPost(@ModelAttribute("createProject") ProjectModel proModel,
			BindingResult result,Model model) throws ParseException
	{
		
		if(result.hasErrors())
		{
			return "create-project";
		}
		Project project=proModel.toProject();
		String currentUser= accountServices.getEmailUser();
		project.setOwner(currentUser);
		proServices.createProject(project);
		
//		ProjectUserModel user=new ProjectUserModel();
//		model.addAttribute("createPro", user);
		
		return "redirect:/project";
	}
	

	
}
