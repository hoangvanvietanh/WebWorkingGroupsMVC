package com.java.vakapu.controller;

import java.text.ParseException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.java.vakapu.entity.User;
import com.java.vakapu.model.TeamModel;
import com.java.vakapu.model.TeamProjectModel;
import com.java.vakapu.entity.TeamProject;
import com.java.vakapu.entity.Account;
import com.java.vakapu.entity.Friendship;
import com.java.vakapu.entity.NotificationSystem;
import com.java.vakapu.entity.ProjectHistory;
import com.java.vakapu.entity.Team;
import com.java.vakapu.entity.TeamMember;
import com.java.vakapu.entity.TeamMemberTaskTeamProject;
import com.java.vakapu.entity.TeamMemberTeamProject;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.DateServices;
import com.java.vakapu.services.EmailServices;
import com.java.vakapu.services.FriendshipServices;
import com.java.vakapu.services.HistoryServices;
import com.java.vakapu.services.NotificationsSystemServices;
import com.java.vakapu.services.UserServices;

import utils.Activity;
import utils.RandomPassword;

import com.java.vakapu.services.ProjectServices;
import com.java.vakapu.services.TaskServices;
import com.java.vakapu.services.TeamMemberServices;
import com.java.vakapu.services.TeamMemberTeamProjectServices;
import com.java.vakapu.services.TeamServices;

@Controller
@SessionAttributes("idteam")
@RequestMapping("/team")
public class TeamController {

	@Autowired
	private AccountServices accountServices;

	@Autowired
	private ProjectServices proServices;

	@Autowired
	private TeamServices teamServices;

	@Autowired
	private TeamMemberServices teamMemberServices;

	@Autowired
	private UserServices userServices;

	@Autowired
	private TeamMemberTeamProjectServices memberProjectServices;

	@Autowired
	private DateServices dateServices;

	@Autowired
	private HistoryServices historyServices;

	@Autowired
	private TaskServices taskServices;

	@Autowired
	private EmailServices emailServices;

	@Autowired
	private NotificationsSystemServices notificationsSystemServices;

	@Autowired
	private TeamMemberTeamProjectServices teamMemberTeamProjectServices;

	@Autowired
	private FriendshipServices friendServices;

	@GetMapping
	public String getInfoProject(@RequestParam("idTeam") int idTeam, Model model, ModelMap modelMap) {
		String emailUser = accountServices.getEmailUser();
		User user = userServices.findByEmail(emailUser);
		Team team = teamServices.findById(idTeam);
		TeamModel teamModel = new TeamModel();
		teamModel.fromTeam(team);
		TeamProjectModel newProject = new TeamProjectModel();
		modelMap.put("idteam", idTeam);
		List<TeamMember> member = teamMemberServices.findByIdTeam(idTeam);
		for (TeamMember t : member) {
			if (emailUser.equals(t.getMember().getEmail()) && t.getRole().equals("Admin")) {
				model.addAttribute("checkAdmin", "yes");
			}
		}
		List<Integer> teamProject = proServices.findByIdTeam2(idTeam);
		List<TeamProject> teamProjects = new ArrayList<>();
		for (int t : teamProject) {
			teamProjects.add(proServices.find(t));
		}
		List<TeamMemberTeamProject> userProjectStore = proServices.findAll();
		team.setProjectAmount(teamProjects.size());
		team.setMemberAmount(member.size());
		teamServices.updateTeam(team);
		List<NotificationSystem> listMes = notificationsSystemServices.findByEmail(emailUser);
		int i = 0;
		for (NotificationSystem l : listMes) {
			i++;
			if (i < 3 && l.getStatus() == 0) {
				model.addAttribute("checkNotification", "yes");
				break;
			}
		}
		List<Friendship> friend = friendServices.findFriend(emailUser, 1);
		List<Friendship> remove = new ArrayList<Friendship>();
		for (TeamMember t : member) {
			for (Friendship f : friend) {
				if (f.getEmailFriend().getEmail().equals(t.getMember().getEmail())) {
					remove.add(f);
				}
			}
		}
		friend.removeAll(remove);
		model.addAttribute("friend", friend);
		model.addAttribute("messages", listMes);
		model.addAttribute("teamModel", teamModel);
		model.addAttribute("newProject", newProject);
		model.addAttribute("emailUser", emailUser);
		model.addAttribute("project", teamProjects);
		model.addAttribute("member", member);
		model.addAttribute("team", team);
		model.addAttribute("user", userProjectStore);
		model.addAttribute("profile", user);
		model.addAttribute("path", "team");
		return "team";
	}

	@PostMapping
	public String handleProject(Model model) {

		return "redirect:/manage";
	}

	@RequestMapping(value = "/create-project", method = RequestMethod.POST)
	public String createTeam(@ModelAttribute("idteam") int idTeam,
			@ModelAttribute("newProject") TeamProjectModel newProject, BindingResult result, Model model)
			throws ParseException {
		if (result.hasErrors()) {
			return "redirect:/team-project";
		}
		String email = accountServices.getEmailUser();
		User user = userServices.findByEmail(email);
		String[] emailStore = newProject.getEmail();

		if (emailStore.length != 0) {
			TeamProject a = newProject.toProject();
			a.setDue(-2);
			TeamProject b = proServices.createProject(a);
			ProjectHistory proHis = new ProjectHistory();
			proHis.setUser(user.getName());
			proHis.setActivity(Activity.CREATE);
			proHis.setLast(b.getName());
			proHis.setTeamProject(b);
			proHis.setId_user(email);
			proHis.setId_last(b.getId());
			historyServices.create(proHis);
			for (String e : emailStore) {
				TeamMemberTeamProject c = new TeamMemberTeamProject();
				c.setTeamMember(teamMemberServices.getUserTeam(idTeam, e));
				c.setTeamProject(b);
				memberProjectServices.create(c);
			}
		}
		return "redirect:/team?idTeam=" + idTeam;

	}

	@RequestMapping(value = "/editTeam", method = RequestMethod.POST)
	public String editTeam(@ModelAttribute("idteam") int idTeam, @ModelAttribute("editTeam") TeamModel teamModel,
			Model model) {
		Team team = teamModel.toTeam();
		teamServices.updateTeam(team);
		String[] email = teamModel.getEmail();
		List<TeamMember> member = teamMemberServices.findByIdTeam(idTeam);
		List<TeamMember> memberRemove = new ArrayList<TeamMember>();
		for (String e : email) {
			for (TeamMember t : member) {
				if (e.equals(t.getMember().getEmail())) {
					memberRemove.add(t);
				}
			}
		}
		member.removeAll(memberRemove);
		for (TeamMember t : member) {
			TeamMember t2 = teamMemberServices.getUserTeam(idTeam, t.getMember().getEmail());
			List<TeamMemberTeamProject> t1 = teamMemberTeamProjectServices.findByIdTeamMember(t2.getId());
			for (TeamMemberTeamProject team3 : t1) {
				List<TeamMemberTaskTeamProject> t3 = taskServices.findByIdMemberProject(team3.getId());
				for (TeamMemberTaskTeamProject team2 : t3) {
					taskServices.deleteTaskTeamPro(team2);
				}
				teamMemberTeamProjectServices.delete(team3);
			}
			teamMemberServices.delete(t2);
		}
		String[] email2 = teamModel.getEmail2();
		if (email2 != null) {
			Team team2 = teamServices.findById(idTeam);
			for (String e : email2) {
				TeamMember tn = new TeamMember();
				tn.setMember(userServices.findByEmail(e));
				tn.setRole("Member");
				tn.setTeam(team2);
				teamMemberServices.create(tn);
			}
		}
		return "redirect:/team?idTeam=" + idTeam;
	}

	@RequestMapping(value = "/manageUser", method = RequestMethod.POST)
	public String manageUser(@ModelAttribute("idteam") int idTeam, @ModelAttribute("editTeam") TeamModel teamModel,
			Model model) {
		String[] email = teamModel.getEmail();
		List<TeamMember> member = teamMemberServices.findByIdTeam(idTeam);
		List<TeamMember> memberRemove = new ArrayList<TeamMember>();
		for (String e : email) {
			for (TeamMember t : member) {
				if (e.equals(t.getMember().getEmail())) {
					memberRemove.add(t);
				}
			}
		}
		member.removeAll(memberRemove);
		for (TeamMember t : member) {
			TeamMember t2 = teamMemberServices.getUserTeam(idTeam, t.getMember().getEmail());
			List<TeamMemberTeamProject> t1 = teamMemberTeamProjectServices.findByIdTeamMember(t2.getId());
			for (TeamMemberTeamProject team3 : t1) {
				List<TeamMemberTaskTeamProject> t3 = taskServices.findByIdMemberProject(team3.getId());
				for (TeamMemberTaskTeamProject team2 : t3) {
					taskServices.deleteTaskTeamPro(team2);
				}
				teamMemberTeamProjectServices.delete(team3);
			}
			teamMemberServices.delete(t2);
		}
		String[] email2 = teamModel.getEmail2();
		if (email2 != null) {
			Team team2 = teamServices.findById(idTeam);
			for (String e : email2) {
				TeamMember tn = new TeamMember();
				tn.setMember(userServices.findByEmail(e));
				tn.setRole("Member");
				tn.setTeam(team2);
				teamMemberServices.create(tn);
			}
		}
		return "redirect:/team?idTeam=" + idTeam;
	}

	@RequestMapping(value = "/leaveTeam", method = RequestMethod.GET)
	public String leaveTeam(@ModelAttribute("idteam") int idTeam, Model model) throws ParseException {
		String emailUser = accountServices.getEmailUser();
		TeamMember t = teamMemberServices.getUserTeam(idTeam, emailUser);
		List<TeamMemberTeamProject> t1 = memberProjectServices.findByIdTeamMember(t.getId());
		for (TeamMemberTeamProject team : t1) {
			List<TeamMemberTaskTeamProject> t3 = taskServices.findByIdMemberProject(team.getId());
			for (TeamMemberTaskTeamProject team2 : t3) {
				taskServices.deleteTaskTeamPro(team2);
			}
			memberProjectServices.delete(team);
		}
		teamMemberServices.delete(t);
		return "redirect:/manage";
	}

	@RequestMapping(value = "/invitedMember", method = RequestMethod.POST)
	public String inviteMember(@ModelAttribute("idteam") int idTeam, @ModelAttribute("email") String email,
			@ModelAttribute("messages") String messages, Model model) {
		String emailUser = accountServices.getEmailUser();
		User user = userServices.findByEmail(emailUser);
		DateTimeFormatter date = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		LocalDateTime local = LocalDateTime.now();
		String time = date.format(local);
		String idTeamString = Integer.toString(idTeam);
		List<Account> accountStore = accountServices.findAll();
		for (Account a : accountStore) {
			if (email.equals(a.getEmail())) {
				User user2 = userServices.findByEmail(email);
				NotificationSystem mess = new NotificationSystem();
				mess.setToUser(user2);
				mess.setUserFrom(user);
				mess.setStatus(0);
				mess.setDate(time);
				NotificationSystem mess2 = notificationsSystemServices.create(mess);
				String messa = "Hello " + user2.getName() + ",You have invitation to join the team from "
						+ user.getName() + "<br>Do you agree?<br>";
				String messe = String.format(
						"<a class=\"btn btn-primary btn-sm\" href=\"team/joinTeam?idTeam=%s&idNotifications=%s\">Agree</a>"
								+ "<a class=\"btn btn-primary btn-sm\" href=\"team/disJoinTeam?idTeam=%s&idNotifications=%s\">DisAgree</a>",
						idTeamString, mess2.getId(), idTeamString, mess2.getId());
				mess2.setMessages(messa + messe + "<br>Your message: " + messages);
				notificationsSystemServices.update(mess2);
				return "redirect:/team?idTeam=" + idTeam;
			}
		}

		RandomPassword passNew = new RandomPassword();
		String pass = passNew.getCode();
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		Account account = new Account();
		account.setEmail(email);
		account.setPassword(passwordEncoder.encode(pass));
		accountServices.createAccount(account);

		User userNew = new User();
		userNew.setEmail(email);
		userServices.createProfile(userNew);

		User user2 = userServices.findByEmail(email);
		NotificationSystem mess = new NotificationSystem();
		mess.setToUser(user2);
		mess.setUserFrom(user);
		mess.setStatus(0);
		mess.setDate(time);
		NotificationSystem mess2 = notificationsSystemServices.create(mess);
		String messa = "Hello " + user2.getName() + ",You have invitation to join the team from " + user.getName()
				+ "<br>Do you agree?<br>";
		String messe = String.format(
				"<a class=\"btn btn-primary btn-sm\" href=\"team/joinTeam?idTeam=%s&idNotifications=%s\">Agree</a>"
						+ "<a class=\"btn btn-primary btn-sm\" href=\"team/disJoinTeam?idTeam=%s&idNotifications=%s\">DisAgree</a>",
				idTeamString, mess2.getId());
		mess2.setMessages(messa + messe + "<br>Your message: " + messages);
		notificationsSystemServices.update(mess2);
		String text = "Hello my friend ,\n You have invitation to join the team from " + user.getName()
				+ "but we check from system you don't have account in our Web, so we created new account for you."
				+ "\n" + "Your email:" + email + "\n" + "Your password:" + pass + "\n"
				+ "May be this password very hard to remember but you can change it in account settings when you login"
				+ "\n" + "Form: vakapuWeb" + "\n" + "Thanks";
		emailServices.sendInviteMessage(user2.getEmail(), text);

		return "redirect:/team?idTeam=" + idTeam;
	}

	@RequestMapping(value = "/joinTeam", method = RequestMethod.GET)
	public String joinTeam(@RequestParam("idTeam") int idTeam, @RequestParam("idNotifications") int idNotifications,
			Model model) {

		String emailUser = accountServices.getEmailUser();
		Team team = teamServices.findById(idTeam);
		User adduser = userServices.findByEmail(emailUser);
		TeamMember teamMember = new TeamMember();
		teamMember.setMember(adduser);
		teamMember.setTeam(team);
		teamMember.setRole("Member");
		teamMemberServices.create(teamMember);
		team.setMemberAmount(team.getMemberAmount() + 1);
		teamServices.updateTeam(team);

		NotificationSystem mess2 = notificationsSystemServices.find(idNotifications);
		String messe = String.format("You already agree join to team <a href=\"team?idTeam=%s\">%s</a>", idTeam,
				team.getName());
		mess2.setMessages(messe);
		mess2.setStatus(1);
		notificationsSystemServices.update(mess2);
		
		User user1 = userServices.findByEmail(mess2.getUserFrom().getEmail());
		User user2 = userServices.findByEmail(emailUser);
		DateTimeFormatter date = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		LocalDateTime local = LocalDateTime.now();
		String time = date.format(local);
		NotificationSystem mess = new NotificationSystem();
		mess.setToUser(user1);
		String messee = String.format("%s agree join to team %s", user2.getName(), team.getName());
		mess.setMessages(messee);
		mess.setStatus(0);
		mess.setDate(time);
		notificationsSystemServices.create(mess);
		

		return "redirect:/team?idTeam=" + idTeam;
	}

	@RequestMapping(value = "/disJoinTeam", method = RequestMethod.GET)
	public String disJoinTeam(@RequestParam("idTeam") int idTeam, @RequestParam("idNotifications") int idNotifications,
			Model model) {
		Team team = teamServices.findById(idTeam);
		NotificationSystem mess2 = notificationsSystemServices.find(idNotifications);
		String messe = String.format("You dissagree join to team <a href=\"team?idTeam=%s\">%s</a>", idTeam,
				team.getName());
		mess2.setMessages(messe);
		mess2.setStatus(1);
		notificationsSystemServices.update(mess2);

		DateTimeFormatter date = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		LocalDateTime local = LocalDateTime.now();
		String time = date.format(local);
		String emailUser = accountServices.getEmailUser();
		User user1 = userServices.findByEmail(mess2.getUserFrom().getEmail());
		User user2 = userServices.findByEmail(emailUser);

		NotificationSystem mess = new NotificationSystem();
		mess.setToUser(user1);
		mess.setUserFrom(user2);
		String messee = String.format("%s disagree join to team %s", user2.getName(), team.getName());
		mess.setMessages(messee);
		mess.setStatus(0);
		mess.setDate(time);
		notificationsSystemServices.create(mess);

		return "redirect:/home";

	}

	@RequestMapping(value = "/setAdmin", method = RequestMethod.GET)
	public String setRoleAdmin(@ModelAttribute("idteam") int idTeam, @RequestParam("idMember") int idMember,
			Model model) {
		TeamMember t = teamMemberServices.findMemberById(idMember);
		t.setRole("Admin");
		teamMemberServices.updateTeamMember(t);

		return "redirect:/team?idTeam=" + idTeam;
	}
}
