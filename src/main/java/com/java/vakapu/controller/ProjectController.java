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


import com.java.vakapu.entity.InfoProject;
import com.java.vakapu.entity.Project;
import com.java.vakapu.model.InfoProjectModel;
import com.java.vakapu.model.ProjectModel;
import com.java.vakapu.services.InfoProjectServices;
import com.java.vakapu.services.ProjectServices;

@Controller
@RequestMapping("/infoproject")
public class ProjectController {

	@Autowired
	private ProjectServices proServices;
	
	@Autowired
	private InfoProjectServices infoServices;
	
	@RequestMapping(method=RequestMethod.GET)
	public String getInfoProject(Model model)
	{
		List<InfoProject> result= infoServices.findAll();
		model.addAttribute("listInfo",result);
		return "home-project";
	}
	
	@RequestMapping(value="/createInfo",method=RequestMethod.GET)
	public String createInfoGet(Model model) throws ParseException
	{
		InfoProjectModel info=new InfoProjectModel();
		model.addAttribute("createInfo", info);
		return "create-infoproject";
	}
	
	@RequestMapping(value="/createInfo",method=RequestMethod.POST)
	public String createInfoPost(@ModelAttribute("createInfo") InfoProjectModel infoModel,
			BindingResult result,Model model) throws ParseException
	{
		InfoProject info=infoModel.toInfoProject();
		infoServices.createInfoProject(info);
		if(result.hasErrors())
		{
			return "create-project";
		}
		return "project";
	}
	
	@RequestMapping(value="/createProject",method=RequestMethod.GET)
	public String createProjectGet(Model model) throws ParseException
	{
		ProjectModel pro=new ProjectModel();
		model.addAttribute("createPro", pro);
		return "project";
	}
	
	@RequestMapping(value="/createProject",method=RequestMethod.POST)
	public String createProjectPost(@ModelAttribute("createPro") ProjectModel proModel,
			BindingResult result,Model model) throws ParseException
	{
		Project project=proModel.toProject();
		proServices.createProject(project);
		if(result.hasErrors())
		{
			return "project";
		}
		return "redirect:/infoproject";
	}
	
}
