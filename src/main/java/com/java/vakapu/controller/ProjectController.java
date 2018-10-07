package com.java.vakapu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.protobuf.TextFormat.ParseException;
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
		return "project";
	}
	
	@RequestMapping(value="/create",method=RequestMethod.GET)
	public String createGet(Model model)
	{
		ProjectModel proModel= new ProjectModel();
		model.addAttribute("create", proModel);
		return "create-infoproject";
	}
	
	@RequestMapping(value="/create",method=RequestMethod.POST)
	public String createPost(@ModelAttribute("create") InfoProjectModel infoModel,
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
	
	
}
