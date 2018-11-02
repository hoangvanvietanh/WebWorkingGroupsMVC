package com.java.vakapu.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.expression.ParseException;
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
import com.java.vakapu.entity.Friendship;
import com.java.vakapu.entity.NotificationSystem;
import com.java.vakapu.entity.ProjectHistory;
import com.java.vakapu.entity.TaskTeamProject;
import com.java.vakapu.entity.Team;
import com.java.vakapu.entity.TeamMember;
import com.java.vakapu.entity.TeamMemberTaskTeamProject;
import com.java.vakapu.entity.TeamMemberTeamProject;
import com.java.vakapu.entity.TeamProject;
import com.java.vakapu.entity.Todo;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.DateServices;
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
@SessionAttributes({"idteam","idproject", "idtask"})
@RequestMapping("/manage")
public class ManageController {

	@Autowired
	private TeamServices teamServices;

	@Autowired
	private AccountServices accountServices;

	@Autowired
	private ProjectServices projectServices;

	@Autowired
	private UserServices userServices;

	@Autowired
	private FriendshipServices friendshipServices;

	@Autowired
	private TeamMemberServices teamMemberServices;

	@Autowired
	private TaskServices taskServices;

	@Autowired
	private DateServices dateServices;

	@Autowired
	private TeamMemberTeamProjectServices teamMemberTeamProjectServices;

	@Autowired
	private HistoryServices historyServices;
	
	@Autowired
	private NotificationsSystemServices notificationsSystemServices ;
	
	@GetMapping
	public String getInfoProject(Model model,ModelMap modelMap) throws java.text.ParseException {
		modelMap.put("idteam", 0);
		modelMap.put("idproject", 0);
		modelMap.put("idtask", 0);
		String emailUser = accountServices.getEmailUser();
		User user = userServices.findByEmail(emailUser);
		
		List<TeamMember> team = teamMemberServices.findByEmai(emailUser);
		List<TeamMember> memberStore = teamMemberServices.findAll();
		List<TeamMemberTeamProject> teamProject = projectServices.findByEmail(emailUser);
		List<TeamMemberTeamProject> userProjectStore = projectServices.findAll();
		List<Friendship> myFriend = friendshipServices.findFriend(emailUser, 1);
		List<TeamMemberTaskTeamProject> task = taskServices.findByEmailUser(emailUser);

		List<TeamMemberTaskTeamProject> userTaskStore = taskServices.findAll();

		List<NotificationSystem> listMes = notificationsSystemServices.findByEmail(emailUser);
		int i=0;
		for(NotificationSystem l:listMes)
		{
			i++;
			if(i<3 && l.getStatus() == 0)
			{
				model.addAttribute("checkNotification", "yes");
				break;
			}
		}
		TeamModel teamModel = new TeamModel();
		model.addAttribute("messages", listMes);
		model.addAttribute("teamAdd", teamModel);
		model.addAttribute("friend", myFriend);
		model.addAttribute("member", memberStore);
		model.addAttribute("userPro", userProjectStore);
		model.addAttribute("emailUser", emailUser);
		model.addAttribute("team", team);
		model.addAttribute("project", teamProject);
		model.addAttribute("profile", user);
		model.addAttribute("userTask", userTaskStore);
		model.addAttribute("task", task);

		return "manage";
	}

	@PostMapping
	public String handleProject(Model model) {

		return "redirect:/manage";
	}

	@RequestMapping(value = "/createTeam", method = RequestMethod.POST)
	public String createTeam(@ModelAttribute("addMember") TeamModel teamModel, @ModelAttribute("teamAdd") Team team,
			Model model) throws ParseException {
		DateTimeFormatter date = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");
		LocalDateTime local = LocalDateTime.now();
		String time = date.format(local);
		String[] email = teamModel.getEmail();
		String emailUser = accountServices.getEmailUser();
		User user = userServices.findByEmail(emailUser);
		team.setOwner(user.getName()+"("+emailUser+")");
		team.setDateCreate(time);
		Team team2 = teamServices.createTeam(team);
		int i = 0;
		for (String e : email) {
			i++;
			User adduser = userServices.findByEmail(e);
			TeamMember teamMember = new TeamMember();
			teamMember.setMember(adduser);
			teamMember.setTeam(team2);
			if(emailUser.equals(e))
			{
				teamMember.setRole("Admin");
			}
			else
			{
				teamMember.setRole("Member");
			}
			teamMemberServices.create(teamMember);
		}
		team2.setMemberAmount(i);
		teamServices.updateTeam(team2);

		return "redirect:/manage";
	}

	@RequestMapping(value = "/leaveTeam", method = RequestMethod.GET)
	public String leaveTeam(@RequestParam("idTeam") int idTeam, Model model) throws ParseException {
		String emailUser = accountServices.getEmailUser();
		TeamMember t = teamMemberServices.getUserTeam(idTeam, emailUser);
		List<TeamMemberTeamProject> t1 = teamMemberTeamProjectServices.findByIdTeamMember(t.getId());
		for (TeamMemberTeamProject team : t1) {
			List<TeamMemberTaskTeamProject> t3 = taskServices.findByIdMemberProject(team.getId());
			for (TeamMemberTaskTeamProject team2 : t3) {
				taskServices.deleteTaskTeamPro(team2);
			}
			teamMemberTeamProjectServices.delete(team);
		}
		teamMemberServices.delete(t);
		return "redirect:/manage";
	}

	@RequestMapping(value = "/leaveProject", method = RequestMethod.GET)
	public String leaveProject(@RequestParam("idProject") int idProject, Model model) throws ParseException {
		String emailUser = accountServices.getEmailUser();
		User user = userServices.findByEmail(emailUser);
		TeamMemberTeamProject memPro = teamMemberTeamProjectServices.findByEmailUser(emailUser, idProject);
		TeamProject pro = projectServices.find(idProject);
		ProjectHistory proHis = new ProjectHistory();
		proHis.setUser(user.getName());
		proHis.setActivity(Activity.QUITPROJECT);
		proHis.setLast(pro.getName());
		proHis.setTeamProject(pro);
		proHis.setId_user(emailUser);
		proHis.setId_last(idProject);
		historyServices.create(proHis);
		List<TeamMemberTaskTeamProject> memTask = taskServices.findByIdMemberProject(memPro.getId());
		for(TeamMemberTaskTeamProject taskteam:memTask)
		{
			taskServices.deleteTaskTeamPro(taskteam);
		}
		teamMemberTeamProjectServices.delete(memPro);
		
		return "redirect:/manage";
	}
	
	@RequestMapping(value = "/makeDoneTask", method = RequestMethod.GET)
	public String makeAsDoneTask(@RequestParam("idTask") int idTask, Model model) throws ParseException {
		TaskTeamProject task = taskServices.findById(idTask);
		List<Todo> todo = taskServices.findTodoByIdTask(idTask);
		for(Todo t:todo)
		{
			t.setCompleted(1);
			taskServices.update(t);
		}
		task.setCompletedAmount(task.getTotalTask());
		taskServices.update(task);
		return "redirect:/manage";
	}
	
	@RequestMapping(value="editTeam",method=RequestMethod.POST)
	public String editTeam(@ModelAttribute("teamAdd") TeamModel team,Model model, BindingResult result) throws ParseException
	{
		if(result.hasErrors())
		{
			return "redirect:/manage";
		}
		
		teamServices.updateTeamModel(team);
		
		return "redirect:/manage";
	}
	
}
