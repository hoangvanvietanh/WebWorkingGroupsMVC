package com.java.vakapu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.MemberServices;
import com.java.vakapu.services.ProjectServices;
import com.java.vakapu.services.ProjectUserServices;
import com.java.vakapu.services.TeamServices;

@Controller
@RequestMapping("/task-team")
public class TaskTeamController {
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
	public String taskTeam(Model model) {

		return "task-team";
	}

	@PostMapping
	public String handelTaskTeam(Model model)  {

		return "redirect:/task-team";
	}
}
