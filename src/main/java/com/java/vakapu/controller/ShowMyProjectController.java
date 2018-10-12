package com.java.vakapu.controller;

import java.util.List;

import org.hibernate.annotations.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.expression.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.java.vakapu.entity.Project;
import com.java.vakapu.entity.Task;
import com.java.vakapu.model.ProjectModel;
import com.java.vakapu.model.TaskModel;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.ProjectServices;
import com.java.vakapu.services.ProjectUserServices;
import com.java.vakapu.services.TaskServices;

@Controller
@SessionAttributes("id")
@RequestMapping("/showMyProject")
public class ShowMyProjectController {

	@Autowired
	private AccountServices accountServices;

	@Autowired
	private ProjectUserServices proUserServices;

	@Autowired
	private ProjectServices proServices;
	
	@Autowired
	private TaskServices taskServices;
	
	@RequestMapping(method = RequestMethod.GET)
	public String getInfoProject(@RequestParam("id") int id,Model model, ModelMap modelMap) {
		System.out.println("Id la:::::::::::::::::::::::::::::::::::::::::::::::::::::::" + id);
		modelMap.put("id", id);
		List<Task> task = taskServices.findByIdProject(id);
		Project project = proServices.find(id);
		TaskModel taskModel = new TaskModel();
		ProjectModel proModel = new ProjectModel();
		proModel.fromProject(project);
		model.addAttribute("taskCreate", taskModel);
		model.addAttribute("project", project);
		model.addAttribute("proModel", proModel);
		model.addAttribute("task", task);
		return "showmyproject";
	}
	
	@RequestMapping(value = "/createTask", method = RequestMethod.POST)
	public String createInfoPost(@ModelAttribute("taskCreate") TaskModel taskModel,@ModelAttribute("id") int id ,BindingResult result,
			Model model) throws ParseException {

		if (result.hasErrors()) {
			return "create-project";
		}
		Project project = proServices.find(id);
		Task task = taskModel.toTask();
		task.setOwner(accountServices.getEmailUser());
		task.setProject(project);
		taskServices.create(task);
		
		return "redirect:/showMyProject";
	}
	@RequestMapping(value = "/updateProject", method = RequestMethod.POST)
	public String updateProject(@ModelAttribute("proModel") Project project,@ModelAttribute("id") int id ,BindingResult result,
			Model model) throws ParseException {

		if (result.hasErrors()) {
			return "create-project";
		}
		proServices.updateProject(project);
		return "redirect:/showMyProject";
	}
	
}
