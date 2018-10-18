package com.java.vakapu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;



@Controller
@SessionAttributes("idteam")
@RequestMapping("/showtask")
public class TaskTeamProjectController {

//	@Autowired
//	private AccountServices accountServices;
//
//	@Autowired
//	private ProjectServices proServices;
//
//	@Autowired
//	private TeamServices teamServices;
//	
//	@Autowired
//	private TeamMemberServices teamMemberServices;
//	
//	@Autowired
//	private UserServices userServices;
//	
//	@Autowired
//	private TaskServices taskServices;

	@GetMapping
	public String getInfoProject(@RequestParam("idTeam") int idTeam,Model model, ModelMap modelMap) {
		
		return "";
	}
}
