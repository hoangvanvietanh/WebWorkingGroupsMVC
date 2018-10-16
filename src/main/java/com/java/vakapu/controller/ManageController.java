package com.java.vakapu.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.java.vakapu.entity.User;
import com.java.vakapu.entity.Friendship;
import com.java.vakapu.entity.Profile;
import com.java.vakapu.entity.ProjectUser;
import com.java.vakapu.entity.Team;
import com.java.vakapu.entity.TeamMember;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.FriendshipServices;
import com.java.vakapu.services.MemberServices;
import com.java.vakapu.services.ProfileServices;
import com.java.vakapu.services.ProjectServices;
import com.java.vakapu.services.ProjectUserServices;
import com.java.vakapu.services.TeamServices;
import com.java.vakapu.services.TeamUserServices;

@Controller
@RequestMapping("/manage")
public class ManageController {

	@Autowired
	private AccountServices accountServices;

	@Autowired
	private ProjectUserServices proUserServices;

	@Autowired
	private ProfileServices profileServices;

	@Autowired
	private TeamServices teamServices;

	@Autowired
	private MemberServices memberServices;
	
	@Autowired
	private TeamUserServices teamUserServices;
	
	@Autowired
	private FriendshipServices friendshipServices;

	@GetMapping
	public String getInfoProject(Model model) {
		String emailUser = accountServices.getEmailUser();
		Profile profile = profileServices.findByEmail(emailUser);
		List<TeamMember> team = teamUserServices.findByEmai(emailUser);
		List<TeamMember> memberStore = teamUserServices.findAll();
		List<ProjectUser> project = proUserServices.findByEmail(emailUser);
		List<ProjectUser> userProjectStore = proUserServices.findAll();
		List<Friendship> myFriend = friendshipServices.findFriend(emailUser);
		model.addAttribute("friend", myFriend);
		model.addAttribute("member", memberStore);
		model.addAttribute("userPro", userProjectStore);
		model.addAttribute("emailUser", emailUser);
		model.addAttribute("team", team);
		model.addAttribute("project", project);
		model.addAttribute("profile", profile);
		
		return "manage";
	}

	@PostMapping
	public String handleProject(Model model) {

		return "redirect:/manage";
	}
}
