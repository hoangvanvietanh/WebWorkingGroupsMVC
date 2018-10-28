package com.java.vakapu.controller;

import java.text.ParseException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
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
		List<Integer> teamProject = proServices.findByIdTeam2(idTeam);
		List<TeamProject> teamProjects = new ArrayList<>();
		for(int t:teamProject)
		{
			teamProjects.add(proServices.find(t));
		}
		List<TeamMemberTeamProject> userProjectStore = proServices.findAll();
		team.setProjectAmount(teamProjects.size());
		team.setMemberAmount(member.size());
		teamServices.updateTeam(team);
		List<NotificationSystem> listMes = notificationsSystemServices.findByEmail(emailUser);
		model.addAttribute("messages", listMes);
		model.addAttribute("teamModel", teamModel);
		model.addAttribute("newProject", newProject);
		model.addAttribute("emailUser", emailUser);
		model.addAttribute("project", teamProjects);
		model.addAttribute("member", member);
		model.addAttribute("team", team);
		model.addAttribute("user", userProjectStore);
		model.addAttribute("profile", user);

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
		DateTimeFormatter date=DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		LocalDateTime local=LocalDateTime.now();
		String time=date.format(local);
		List<Account> accountStore = accountServices.findAll();
		for (Account a : accountStore) {
			if (email.equals(a.getEmail())) {
				User user2 = userServices.findByEmail(email);
				System.out.println("email User2:" + user2.getEmail());
				NotificationSystem mess = new NotificationSystem();
				mess.setToUser(user2);
				mess.setUserFrom(user);
				String messa = "Hello " + user2.getName() + ",You have invitation to join the team from "
						+ user.getName() + "\nThis is your link: "
						+ "http://localhost:8080/time-is-gold/team/joinTeam?idTeam=" + idTeam;
				mess.setMessages(messa + "\nAnd your message: " + messages);
				mess.setStatus(0);
				mess.setDate(time);
				notificationsSystemServices.create(mess);
			}
		}

		return "redirect:/team?idTeam=" + idTeam;
	}

	@RequestMapping(value = "/joinTeam", method = RequestMethod.GET)
	public String joinTeam(@RequestParam("idTeam") int idTeam, Model model) {
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

		return "redirect:/team?idTeam=" + idTeam;
	}
}
