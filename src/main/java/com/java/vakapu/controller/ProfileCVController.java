package com.java.vakapu.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
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
	public String show(Model model) {
		String emailUser = accountServices.getEmailUser();
		User user = userServices.findByEmail(emailUser);
		model.addAttribute("emailUser", emailUser);
		model.addAttribute("user", user);
		model.addAttribute("checkFriend", 1);
		if(user.getTheme()==2)
		{
			return "cv2";
		}
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
				if(user.getTheme()==2)
				{
					return "cv2";
				}
				return "profile-cv";
			}
		}
		return "redirect:/home";
	}
	
	@RequestMapping(value = "/cv", method = RequestMethod.GET)
	public String searchCV(Model model, @RequestParam("email") String email) {
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
				if(user.getTheme()==2)
				{
					return "cv2";
				}
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
		mess.setStatus(0);
		mess.setDate(time);
		NotificationSystem mess2 = notificationsSystemServices.create(mess);
		String messa = "Hello " + userFriend.getName() + ",You have invite to add friend form " + user.getName()
				+ "<br>Do you agree?<br>";
		String messe = String.format(
				"<a class=\"btn btn-primary btn-sm\" href=\"profile-cv/agree?emailFriend=%s&emailUser=%s&idNotifications=%s\">Agree</a>"+
				"<a class=\"btn btn-primary btn-sm\" href=\"profile-cv/disagree?emailFriend=%s&emailUser=%s&idNotifications=%s\">DisAgree</a>",
				emailFriend, emailUser, mess2.getId(),emailFriend, emailUser, mess2.getId());
		mess2.setMessages(messa + messe);
		notificationsSystemServices.update(mess2);

		return "redirect:/home";
	}

	@RequestMapping(value = "/agree", method = RequestMethod.GET)
	public String agress(Model model, @RequestParam("emailFriend") String emailFriend,
			@RequestParam("emailUser") String emailUser, @RequestParam("idNotifications") int idNotifications) {
		
		DateTimeFormatter date = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		LocalDateTime local = LocalDateTime.now();
		String time = date.format(local);
		
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
		
		NotificationSystem noti = notificationsSystemServices.find(idNotifications);
		String messe = String.format(
				"You and <a>%s</a> become a friend",user1.getName());
		noti.setMessages(messe);
		notificationsSystemServices.update(noti);
		
		NotificationSystem notiNew = new NotificationSystem();
		notiNew.setToUser(user1);
		notiNew.setDate(time);
		notiNew.setStatus(0);
		notiNew.setMessages(user2.getName() + " already invited friend");
		notificationsSystemServices.create(notiNew);
		return "redirect:/home";

	}
	
	@RequestMapping(value = "/disagree", method = RequestMethod.GET)
	public String disagress(Model model, @RequestParam("emailFriend") String emailFriend,
			@RequestParam("emailUser") String emailUser, @RequestParam("idNotifications") int idNotifications) {
		NotificationSystem noti = notificationsSystemServices.find(idNotifications);
		notificationsSystemServices.delete(noti);
		return "redirect:/home";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String accessDeniedPage(ModelMap model) {
		return "redirect:/home";
	}
}
