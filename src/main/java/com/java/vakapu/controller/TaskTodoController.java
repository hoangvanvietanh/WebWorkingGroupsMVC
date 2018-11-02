package com.java.vakapu.controller;

import java.text.ParseException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

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

import com.java.vakapu.entity.Notes;
import com.java.vakapu.entity.NotificationSystem;
import com.java.vakapu.entity.TaskTeamProject;
import com.java.vakapu.entity.TeamMemberTaskTeamProject;
import com.java.vakapu.entity.TeamMemberTeamProject;
import com.java.vakapu.entity.Todo;
import com.java.vakapu.model.NoteModel;
import com.java.vakapu.model.TaskModel;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.DateServices;
import com.java.vakapu.services.NotificationsSystemServices;
import com.java.vakapu.services.NoteService;
import com.java.vakapu.services.TaskServices;
import com.java.vakapu.services.TeamMemberTeamProjectServices;

@Controller
@SessionAttributes({ "idteam","idproject", "idtask" })
@RequestMapping("/task-todo")
public class TaskTodoController {

	@Autowired
	private DateServices dateServices;
	
	@Autowired
	private AccountServices accountServices;

	@Autowired
	private TaskServices taskServices;
	
	@Autowired
	private NoteService noteServices;
	
	@Autowired
	private NotificationsSystemServices notificationsSystemServices ;
	
	@Autowired
	private TeamMemberTeamProjectServices teamProServices;
	
	@Autowired
	private TeamMemberTeamProjectServices teamMemberTeamProjectDAO;
	
//	@GetMapping(path="getNote/{idnote}")
//	public @ResponseBody Notes getNoteInfor(@PathVariable(name="idnote") int idNote)
//	{
//		Notes note= noteServices.findByID(idNote);
//		return note;
//	}

	
	@GetMapping
	public String teamProject(@RequestParam("idTask") int idTask, @ModelAttribute("idteam") int idTeam,@ModelAttribute("idproject") int idProject,
			Model model, ModelMap modelMap) throws ParseException {
		modelMap.put("idtask", idTask);
		String emailUser = accountServices.getEmailUser();
		
		TaskTeamProject task = taskServices.findById(idTask);
		Notes note= new Notes();
		
		
		TaskModel editTask=new TaskModel();
		TaskModel editTask2=new TaskModel();
		NoteModel noteM=new NoteModel();
		
		noteM.fromNote(note);
		editTask.fromTask(task);
		
		List<TeamMemberTaskTeamProject> listMember = taskServices.findTaskByIdProject(idProject, idTask);
		List<Todo> listTodo = taskServices.findTodoByIdTask(idTask);
		List<Notes> listNotes= noteServices.findAllNote(idTask);
		int completedAmount = taskServices.findTodoDoneByIdTask(idTask);
		int due = dateServices.caculatorDue(task.getEndDate());
		task.setCompletedAmount(completedAmount);
		task.setTotalTask(listTodo.size());
		task.setDue(due);
		if(task.getCompletedAmount() == task.getTotalTask() && task.getTotalTask()!=0)
		{
			task.setCompleted(1);
		}
		else
		{
			task.setCompleted(0);
		}
		taskServices.update(task);
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
		List<TeamMemberTeamProject> userStore = teamProServices.findByIdProject(idProject);
		List<TeamMemberTeamProject> remove = new ArrayList<TeamMemberTeamProject>();
		for(TeamMemberTaskTeamProject t: listMember)
		{
			for(TeamMemberTeamProject u: userStore)
			{
				if(u.getTeamMember().getMember().getEmail().equals(t.getTeamMemberTeamProject().getTeamMember().getMember().getEmail()))
				{
					remove.add(u);
				}
			}
		}
		userStore.removeAll(remove);
		for(TeamMemberTeamProject t: userStore)
		{
			System.out.println("vietanh:" +t.getTeamMember().getMember().getName());
		}
		model.addAttribute("messages", listMes);
		model.addAttribute("note",noteM);
		model.addAttribute("todo", listTodo);
		model.addAttribute("memberProject", userStore);
		model.addAttribute("member", listMember);
		model.addAttribute("notes", listNotes);
		model.addAttribute("task", task);
		model.addAttribute("emailUser", emailUser);
		model.addAttribute("idProject", idProject);
		model.addAttribute("idTeam", idTeam);
		model.addAttribute("editTask", editTask);
		model.addAttribute("editTask2", editTask2);
		return "task-team";
	}

	@PostMapping
	public String handalTeamProject(Model model) {

		return "redirect:/team-project";
	}

	@RequestMapping(value = "/create-todo", method = RequestMethod.POST)
	public String createTeam(@ModelAttribute("idproject") int idProject, @ModelAttribute("idtask") int idTask,
			@ModelAttribute("todo") String todo, BindingResult result, Model model) throws ParseException {
		TaskTeamProject task = taskServices.findById(idTask);
		Todo todo2 = new Todo();
		todo2.setTodo(todo);
		todo2.setCompleted(0);
		todo2.setTask(task);
		taskServices.createTodo(todo2);

		return "redirect:/task-todo?idTask=" + idTask;
	}

	@RequestMapping(value = "/update-todo", method = RequestMethod.POST)
	public String updateTeam(@ModelAttribute("idtask") int idTask, @ModelAttribute("completed") int completed,
			@ModelAttribute("idTodo") int idtodo, @ModelAttribute("todo") String todo, BindingResult result,
			Model model) throws ParseException {
		Todo todo2 = taskServices.find(idtodo);
		todo2.setCompleted(completed);
		taskServices.update(todo2);
		return "redirect:/task-todo?idTask=" + idTask;
	}
	
	@RequestMapping(value="edit-task",method=RequestMethod.POST)
	public String updateTask(@ModelAttribute("idproject") int idProject,@ModelAttribute("idtask") int idTask,@ModelAttribute("editTask") TaskModel editTask, BindingResult result, Model model)
	{
		if(result.hasErrors())
		{
			return "redirect:/task-todo";
		}
		TaskTeamProject task= editTask.toTask();
		taskServices.update(task);
		String[] email = editTask.getEmail();
		List<TeamMemberTaskTeamProject> listMember = taskServices.findTaskByIdProject(idProject, idTask);
		List<TeamMemberTaskTeamProject> removeMem = new ArrayList<TeamMemberTaskTeamProject>();
		for(String e:email)
		{
			for(TeamMemberTaskTeamProject t:listMember)
			{
				if(e.equals(t.getTeamMemberTeamProject().getTeamMember().getMember().getEmail()))
				{
					removeMem.add(t);
				}
			}
		}
		listMember.removeAll(removeMem);
		for(TeamMemberTaskTeamProject t:listMember)
		{
			taskServices.deleteTaskTeamPro(t);
		}
		String[] email2 = editTask.getEmail2();
		if(email2 != null)
		{
			for(String e:email2)
			{
				TeamMemberTaskTeamProject taskMemNew = new TeamMemberTaskTeamProject();
				taskMemNew.setTeamMemberTeamProject(teamMemberTeamProjectDAO.findByEmailUser(e, idProject));
				taskMemNew.setTaskTeamProject(taskServices.findById(idTask));
				taskServices.createMemberTask(taskMemNew);
				
			}
		}
		return "redirect:/task-todo?idTask="+task.getId();
		
	}
	
	@RequestMapping(value="manage-user-task",method=RequestMethod.POST)
	public String editUser(@ModelAttribute("idproject") int idProject,@ModelAttribute("idtask") int idTask,@ModelAttribute("editTask") TaskModel editTask, BindingResult result, Model model)
	{
		String[] email = editTask.getEmail();
		List<TeamMemberTaskTeamProject> listMember = taskServices.findTaskByIdProject(idProject, idTask);
		List<TeamMemberTaskTeamProject> removeMem = new ArrayList<TeamMemberTaskTeamProject>();
		for(String e:email)
		{
			for(TeamMemberTaskTeamProject t:listMember)
			{
				if(e.equals(t.getTeamMemberTeamProject().getTeamMember().getMember().getEmail()))
				{
					removeMem.add(t);
				}
			}
		}
		listMember.removeAll(removeMem);
		for(TeamMemberTaskTeamProject t:listMember)
		{
			taskServices.deleteTaskTeamPro(t);
		}
		String[] email2 = editTask.getEmail2();
		if(email2 != null)
		{
			for(String e:email2)
			{
				TeamMemberTaskTeamProject taskMemNew = new TeamMemberTaskTeamProject();
				taskMemNew.setTeamMemberTeamProject(teamMemberTeamProjectDAO.findByEmailUser(e, idProject));
				taskMemNew.setTaskTeamProject(taskServices.findById(idTask));
				taskServices.createMemberTask(taskMemNew);
				
			}
		}
		return "redirect:/task-todo?idTask="+idTask;
	}
	
	@RequestMapping(value="/create-note",method=RequestMethod.POST)
	public String createNote(@ModelAttribute("note") NoteModel noteModel,@ModelAttribute("idtask") int idtask,
			BindingResult result, Model model) throws ParseException
	{
		if(result.hasErrors())
		{
			return "redirect:/task-todo";
		}
		DateTimeFormatter date=DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		LocalDateTime local=LocalDateTime.now();
		String time=date.format(local);
		
		TaskTeamProject task=taskServices.findByIdTask(idtask);
		
		String current=accountServices.getEmailUser();
		
		Notes note=noteModel.toNote();
		note.setTaskTeamProject(task);
		note.setDate(time);
		note.setEmailUser(current);
		noteServices.createNote(note);
		
		return "redirect:/task-todo?idTask="+idtask;
		
	}
	
	@RequestMapping(value="edit-note",method=RequestMethod.POST)
	public String editNote(@ModelAttribute("note") NoteModel editNote, @ModelAttribute("idtask") int idtask,
			BindingResult result,Model model) throws ParseException
	{
		if(result.hasErrors())
		{
			return "redirect:/task-todo?idTask="+idtask;
		}
		
		noteServices.updateNote(editNote);
		
		return "redirect:/task-todo?idTask="+idtask;	
	}
	
	@RequestMapping(value="delete",method=RequestMethod.GET)
	public String deleteNote(@RequestParam(name="idnote") int idnote, @ModelAttribute("idtask") int idtask,Model model)
	{
		Notes note=noteServices.findByID(idnote);
		noteServices.deleteNote(note);
		
		return "redirect:/task-todo?idTask="+idtask;
	}
}
