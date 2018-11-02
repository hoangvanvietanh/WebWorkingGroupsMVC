package com.java.vakapu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.vakapu.entity.Friendship;
import com.java.vakapu.entity.NotificationSystem;
import com.java.vakapu.entity.TeamMember;
import com.java.vakapu.entity.User;
import com.java.vakapu.model.TeamModel;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.FriendshipServices;
import com.java.vakapu.services.NotificationsSystemServices;
import com.java.vakapu.services.TeamMemberServices;
import com.java.vakapu.services.UserServices;

@Controller
@RequestMapping("/home")
public class HomeController {
	@Autowired
	private AccountServices accountServices;
	
	@Autowired
	private NotificationsSystemServices notificationsSystemServices ;
	
	@Autowired
	private FriendshipServices friendshipServices;
	
	@Autowired
	private TeamMemberServices teamMemberServices;
	
	@Autowired
	private UserServices userServices;
	
	@GetMapping
	public String home(Model model) {
		String emailUser = accountServices.getEmailUser();
		User user = userServices.findByEmail(emailUser);
		List<NotificationSystem> listMes = notificationsSystemServices.findByEmail(emailUser);
		List<Friendship> myFriend = friendshipServices.findFriend(emailUser, 1);
		List<TeamMember> team = teamMemberServices.findByEmai(emailUser);
		List<TeamMember> memberStore = teamMemberServices.findAll();
//		for(Friendship f:myFriend)
//		{
//			System.out.println("vietanh:"+f.getEmailFriend().getName());
//		}
		TeamModel teamModel = new TeamModel();
		model.addAttribute("teamAdd", teamModel);
		model.addAttribute("team", team);
		model.addAttribute("emailUser", emailUser);
		model.addAttribute("messages", listMes);
		model.addAttribute("friend", myFriend);
		model.addAttribute("member", memberStore);
		model.addAttribute("user", user);
		return "home";
	}

	@PostMapping
	public String handelHome(Model model)  {

		return "redirect:/home";
	}
}
