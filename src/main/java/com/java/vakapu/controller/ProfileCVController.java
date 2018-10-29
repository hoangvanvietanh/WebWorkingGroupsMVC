package com.java.vakapu.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.vakapu.entity.Account;
import com.java.vakapu.entity.Friendship;
import com.java.vakapu.entity.NotificationSystem;
import com.java.vakapu.entity.User;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.FriendshipServices;
import com.java.vakapu.services.NotificationsSystemServices;
import com.java.vakapu.services.UserServices;

@Controller
@RequestMapping("/profile-cv")
public class ProfileCVController {

	@Autowired
	private AccountServices accountServices;

	@Autowired
	private UserServices userServices;

	@Autowired
	private FriendshipServices friendshipServices;
	
	@Autowired
	private NotificationsSystemServices notificationsSystemServices;

	@GetMapping
	public String create(Model model) {
		String emailUser = accountServices.getEmailUser();
		User user = userServices.findByEmail(emailUser);
		model.addAttribute("emailUser", emailUser);
		model.addAttribute("user", user);
		model.addAttribute("checkFriend", 1);
		return "profile-cv";
	}

	@PostMapping
	public String searchVC(Model model, @ModelAttribute("email") String email) {
		String emailUser = accountServices.getEmailUser();
		List<Friendship> myFriend = friendshipServices.findFriend(emailUser, 1);
		List<Account> account = accountServices.findAll();
		model.addAttribute("checkFriend", 0);
		for (Account a : account) {
			if (email.equals(a.getEmail())) {
				User user = userServices.findByEmail(email);
				for (Friendship f : myFriend) {
					if (email.equals(f.getEmailFriend().getEmail()) && f.getStatus() == 1) {
						model.addAttribute("checkFriend", 1);
					}
				}
				model.addAttribute("emailUser", emailUser);
				model.addAttribute("user", user);
				return "profile-cv";
			}
		}
		return "redirect:/home";
	}

	@RequestMapping(value = "/addFriend", method = RequestMethod.GET)
	public String addFriend(Model model, @RequestParam("emailFriend") String emailFriend) {
		String emailUser = accountServices.getEmailUser();
		User user = userServices.findByEmail(emailUser);
		User userFriend = userServices.findByEmail(emailFriend);
		Friendship addFriend = new Friendship();
		addFriend.setEmailUser(user);
		addFriend.setEmailFriend(userFriend);
		addFriend.setStatus(0);
		friendshipServices.create(addFriend);
		
		DateTimeFormatter date = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		LocalDateTime local = LocalDateTime.now();
		String time = date.format(local);
		
		NotificationSystem mess = new NotificationSystem();
		mess.setToUser(userFriend);
		mess.setUserFrom(user);
		String messa = "Hello " + user.getName() + ",You have invitation to add friend form "
				+ user.getName() + "<br>Do you agree?<br>";
		String messe = String.format(
				"<a class=\"btn btn-primary btn-sm\" href=\"profile-cv/agree?emailFriend=%s&emailUser=%s\">Agree</a>", emailFriend,emailUser);
		mess.setMessages(messa + messe);
		mess.setStatus(0);
		mess.setDate(time);
		notificationsSystemServices.create(mess);

		return "redirect:/home";
	}
	@RequestMapping(value = "/agree", method = RequestMethod.GET)
	public String agress(Model model, @RequestParam("emailFriend") String emailFriend,@RequestParam("emailUser") String emailUser) {
		Friendship friendship = friendshipServices.findFriendAndUser(emailUser, emailFriend);
		friendship.setStatus(1);
		friendshipServices.update(friendship);
		
		User user1 = userServices.findByEmail(emailUser);
		User user2 = userServices.findByEmail(emailFriend);
		Friendship friendAgree = new Friendship();
		friendAgree.setEmailUser(user2);
		friendAgree.setEmailFriend(user1);
		friendAgree.setStatus(1);
		friendshipServices.create(friendAgree);
		
		
		return "redirect:/home";
		
	}
}
