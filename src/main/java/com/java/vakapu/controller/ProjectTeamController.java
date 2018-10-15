package com.java.vakapu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.expression.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.java.vakapu.entity.Project;
import com.java.vakapu.model.ProjectModel;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.MemberServices;
import com.java.vakapu.services.ProjectServices;
import com.java.vakapu.services.ProjectUserServices;
import com.java.vakapu.services.TeamServices;

@Controller
@RequestMapping("/team-project")
public class ProjectTeamController {

	@Autowired
	private AccountServices accountServices;

	@Autowired
	private ProjectUserServices proUserServices;

	@Autowired
	private ProjectServices proServices;

	@Autowired
	private TeamServices teamServices;
	
	@Autowired
	private MemberServices memberServices;
	
	@GetMapping
	public String teamProject(Model model) {

		return "team-project";
	}

	@PostMapping
	public String handalTeamProject(Model model)  {

		return "redirect:/team-project";
	}
}
