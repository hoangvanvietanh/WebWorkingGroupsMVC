package com.java.vakapu.controller;

import java.text.ParseException;
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

import com.java.vakapu.entity.TaskTeamProject;
import com.java.vakapu.entity.TeamMemberTaskTeamProject;
import com.java.vakapu.entity.Todo;
import com.java.vakapu.model.TaskModel;
import com.java.vakapu.services.AccountServices;
import com.java.vakapu.services.DateServices;
import com.java.vakapu.services.ProjectServices;
import com.java.vakapu.services.TaskServices;
import com.java.vakapu.services.TeamMemberTeamProjectServices;
import com.java.vakapu.services.UserServices;

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

	@GetMapping
	public String teamProject(@RequestParam("idTask") int idTask, @ModelAttribute("idteam") int idTeam,@ModelAttribute("idproject") int idProject,
			Model model, ModelMap modelMap) throws ParseException {
		modelMap.put("idtask", idTask);
		String emailUser = accountServices.getEmailUser();
		TaskTeamProject task = taskServices.findById(idTask);
		
		TaskModel editTask=new TaskModel();
		editTask.fromTask(task);
		List<TeamMemberTaskTeamProject> listMember = taskServices.findTaskByIdProject(idProject, idTask);
		List<Todo> listTodo = taskServices.findTodoByIdTask(idTask);
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
		model.addAttribute("todo", listTodo);
		model.addAttribute("member", listMember);
		model.addAttribute("task", task);
		model.addAttribute("emailUser", emailUser);
		model.addAttribute("idProject", idProject);
		model.addAttribute("idTeam", idTeam);
		model.addAttribute("editTask", editTask);
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
	public String updateTask(@ModelAttribute("editTask") TaskModel editTask, BindingResult result, Model model)
	{
		if(result.hasErrors())
		{
			return "redirect:/task-todo";
		}
		TaskTeamProject task= editTask.toTask();
		taskServices.update(task);
		return "redirect:/task-todo?idTask="+task.getId();
		
	}
	

}
