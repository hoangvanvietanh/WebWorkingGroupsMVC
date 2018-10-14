package com.java.vakapu.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
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
import com.sun.xml.internal.org.jvnet.staxex.NamespaceContextEx.Binding;

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
	
	@RequestMapping(value="/create",method=RequestMethod.GET)
	public String createInfoGet(Model model) throws ParseException
	{
		ProjectModel pro=new ProjectModel();
		model.addAttribute("project", pro);
		return "create-project";
	}
							
	@RequestMapping(value="/create",method=RequestMethod.POST)
	public String createInfoPost(@ModelAttribute("project") ProjectModel proModel,
			BindingResult result,Model model) throws ParseException
	{
		
		if(result.hasErrors())
		{
			return "create-project";
		}
		Project project=proModel.toProject();
		String currentUser= accountServices.getEmailUser();
		project.setOwner(currentUser);
		project.setStatus("New");
		proServices.createProject(project);
		
//		ProjectUserModel user=new ProjectUserModel();
//		model.addAttribute("createPro", user);
		
		return "redirect:/project";
	}
	
	@RequestMapping(value="/update",method=RequestMethod.GET)
	public String updateGet(@ModelAttribute("project") ProjectModel proM, @RequestParam(name="idproject") int idproject,
			BindingResult result,Model model) throws ParseException
	{
		if(result.hasErrors())
		{
			return "redirect:/project";
		}
		
		Project a=proServices.find(idproject);
		ProjectModel proModel=new ProjectModel();
		proModel.fromProject(a);
		
		model.addAttribute("project",proModel);
		
		return "update-project";
		
	}
	
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String updatePost(@ModelAttribute("project") ProjectModel proM,BindingResult result,Model model)
	{
		
		if(result.hasErrors())
		{
			return "update-project";
		}
		Project pro=proM.toProject();
		proServices.updateProject(pro);
		return "redirect:/project";
	}
	
	@RequestMapping(value="/start",method=RequestMethod.POST)
	public String updatePost(@RequestParam(name="idproject") int idproject,@ModelAttribute("project") ProjectModel proM,
			BindingResult result,Model model) throws ParseException
	{
		DateTimeFormatter date=DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		LocalDateTime local=LocalDateTime.now();
		String time=date.format(local);
		
		Project pro=proServices.find(idproject);
		pro.setStatus("In-progress");
		pro.setStartDate(time);
		proServices.updateProject(pro);
		
		return "redirect:/project";
		
	}
	
	@RequestMapping(value="end",method=RequestMethod.POST)
	public String endPost(@RequestParam(name="idproject") int idproject,@ModelAttribute("project") ProjectModel proM,
			BindingResult result,Model model) throws ParseException
	{
		if(result.hasErrors())
		{
			return "redirect:/project";
		}
		DateTimeFormatter date=DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		LocalDateTime local=LocalDateTime.now();
		String time=date.format(local);
		
		Project b=proServices.find(idproject);
		b.setStatus("Done");
		b.setEndDate(time);
		proServices.updateProject(b);
		
		return "redirect:/project";
	}
	
	@RequestMapping(value="view",method=RequestMethod.POST)
	public String viewGet(@ModelAttribute("idproject") int idproject, Model model) throws ParseException
	{
		Project c=proServices.find(idproject);
		ProjectModel proModel=new ProjectModel();
		proModel.fromProject(c);
		
		model.addAttribute("project",proModel);
		
		return "view-project";
	}
	
	@RequestMapping(value="/cancel",method=RequestMethod.POST)
	public String cancelPost(@RequestParam(name="idproject") int idproject,@ModelAttribute("project") ProjectModel proM,
			BindingResult result,Model model) throws ParseException
	{
		if(result.hasErrors())
		{
			return "redirect:/project";
		}
		DateTimeFormatter date=DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		LocalDateTime local=LocalDateTime.now();
		String time=date.format(local);
		
		Project d=proServices.find(idproject);
		d.setStatus("Cancel");
		d.setEndDate(time);
		proServices.updateProject(d);
		
		return "redirect:/project";
	}

	@RequestMapping(value="/delete",method=RequestMethod.POST)
	public String deletePost(@RequestParam(name="idproject") int idproject, Model model) throws ParseException
	{
		Project pro=proServices.find(idproject);
		proServices.deleteProject(pro);
		return "redirect:/project";
	}
}
