package com.java.vakapu.controller;

import java.util.List;

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
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.java.vakapu.entity.Project;
import com.java.vakapu.entity.Task;
import com.java.vakapu.entity.Todo;
import com.java.vakapu.model.ProjectModel;
import com.java.vakapu.model.TaskModel;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.ProjectServices;
import com.java.vakapu.services.ProjectUserServices;
import com.java.vakapu.services.TaskServices;
import com.java.vakapu.services.TodoServices;

@Controller
@SessionAttributes("idTask")
@RequestMapping("/showMyTask")
public class TodoController {

	@Autowired
	private AccountServices accountServices;

	@Autowired
	private ProjectUserServices proUserServices;

	@Autowired
	private ProjectServices proServices;
	
	@Autowired
	private TaskServices taskServices;
	
	@Autowired
	private TodoServices todoServices;
	
	@RequestMapping(method = RequestMethod.GET)
	public String getInfoProject(@SessionAttribute("id") int id2,@RequestParam("idTask") int id,Model model, ModelMap modelMap) {
		System.out.println("Id la:::::::::::::::::::::::::::::::::::::::::::::::::::::::" + id);
		modelMap.put("idTask", id);
		List<Todo> todo = todoServices.findByIdTask(id);
		Project project = proServices.find(id2);
		Task task = taskServices.findByIdTask(id);
		model.addAttribute("task", task);
		model.addAttribute("project", project);
		model.addAttribute("todo", todo);
		return "showmytask";
	}
	
}
