package com.java.vakapu.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.expression.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.java.vakapu.entity.TeamProject;

import com.java.vakapu.model.TeamProjectModel;

import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.ProjectServices;


@Controller
@RequestMapping("/project")
public class ProjectController {

	@Autowired
	private AccountServices accountServices;
	
	@Autowired
	private ProjectServices proServices;
	
	@RequestMapping(method=RequestMethod.GET)
	public String getInfoProject(Model model)
	{
		//List<TeamProject> result= proServices.findAll();
		//model.addAttribute("listInfo",result);
		return "home-project";
	}
	
	@RequestMapping(value="/create",method=RequestMethod.GET)
	public String createInfoGet(Model model) throws ParseException
	{
		TeamProjectModel pro=new TeamProjectModel();
		model.addAttribute("project", pro);
		return "create-project";
	}
							
	@RequestMapping(value="/create",method=RequestMethod.POST)
	public String createInfoPost(@ModelAttribute("project") TeamProjectModel proModel,
			BindingResult result,Model model) throws ParseException
	{
		
		if(result.hasErrors())
		{
			return "create-project";
		}
		TeamProject teamProject=proModel.toProject();
		String currentUser= accountServices.getEmailUser();
		teamProject.setOwner(currentUser);
		teamProject.setStatus("New");
		proServices.createProject(teamProject);
		
//		ProjectUserModel user=new ProjectUserModel();
//		model.addAttribute("createPro", user);
		
		return "redirect:/project";
	}
	
	@RequestMapping(value="/update",method=RequestMethod.GET)
	public String updateGet(@ModelAttribute("project") TeamProjectModel proM, @RequestParam(name="idProject") int idproject,
			BindingResult result,Model model) throws ParseException
	{
		if(result.hasErrors())
		{
			return "redirect:/project";
		}
		
		TeamProject a=proServices.find(idproject);
		TeamProjectModel proModel=new TeamProjectModel();
		proModel.fromProject(a);
		
		model.addAttribute("project",proModel);
		
		return "update-project";
		
	}
	
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String updatePost(@ModelAttribute("project") TeamProjectModel proM,BindingResult result,Model model)
	{
		
		if(result.hasErrors())
		{
			return "update-project";
		}
		TeamProject pro=proM.toProject();
		proServices.updateProject(pro);
		return "redirect:/project";
	}
	
	@RequestMapping(value="/start",method=RequestMethod.POST)
	public String updatePost(@RequestParam(name="idProject") int idproject,@ModelAttribute("project") TeamProjectModel proM,
			BindingResult result,Model model) throws ParseException
	{
		DateTimeFormatter date=DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		LocalDateTime local=LocalDateTime.now();
		String time=date.format(local);
		
		TeamProject pro=proServices.find(idproject);
		pro.setStatus("In-progress");
		pro.setStartDate(time);
		proServices.updateProject(pro);
		
		return "redirect:/project";
		
	}
	
	@RequestMapping(value="end",method=RequestMethod.POST)
	public String endPost(@RequestParam(name="idProject") int idproject,@ModelAttribute("project") TeamProjectModel proM,
			BindingResult result,Model model) throws ParseException
	{
		if(result.hasErrors())
		{
			return "redirect:/project";
		}
		DateTimeFormatter date=DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		LocalDateTime local=LocalDateTime.now();
		String time=date.format(local);
		
		TeamProject b=proServices.find(idproject);
		b.setStatus("Done");
		b.setEndDate(time);
		proServices.updateProject(b);
		
		return "redirect:/project";
	}
	
	@RequestMapping(value="view",method=RequestMethod.POST)
	public String viewGet(@ModelAttribute("idProject") int idproject, Model model) throws ParseException
	{
		TeamProject c=proServices.find(idproject);
		TeamProjectModel proModel=new TeamProjectModel();
		proModel.fromProject(c);
		
		model.addAttribute("project",proModel);
		
		return "view-project";
	}
	
	@RequestMapping(value="/cancel",method=RequestMethod.POST)
	public String cancelPost(@RequestParam(name="idProject") int idproject,@ModelAttribute("project") TeamProjectModel proM,
			BindingResult result,Model model) throws ParseException
	{
		if(result.hasErrors())
		{
			return "redirect:/project";
		}
		DateTimeFormatter date=DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		LocalDateTime local=LocalDateTime.now();
		String time=date.format(local);
		
		TeamProject d=proServices.find(idproject);
		d.setStatus("Cancel");
		d.setEndDate(time);
		proServices.updateProject(d);
		
		return "redirect:/project";
	}

	@RequestMapping(value="/delete",method=RequestMethod.POST)
	public String deletePost(@RequestParam(name="idProject") int idproject, Model model) throws ParseException
	{
		TeamProject pro=proServices.find(idproject);
		proServices.deleteProject(pro);
		return "redirect:/project";
	}
}
