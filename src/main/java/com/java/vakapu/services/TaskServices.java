package com.java.vakapu.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.vakapu.dao.TaskDAO;
import com.java.vakapu.dao.TaskTeamProjectDAO;
import com.java.vakapu.dao.TodoDAO;
import com.java.vakapu.entity.TaskTeamProject;
import com.java.vakapu.entity.TeamMemberTaskTeamProject;
import com.java.vakapu.entity.Todo;

@Service
@Transactional
public class TaskServices {

	@Autowired
	private TaskDAO taskDao;
	
	@Autowired
	private TodoDAO todoDAO;
	
	@Autowired
	private TaskTeamProjectDAO taskTeamProDAO;
	
	public TaskTeamProject findById(int id)
	{
		return taskDao.find(id);
	}
	public List<Todo> findTodoByIdTask(int id)
	{
		return todoDAO.findByIdTask(id);
	}
	public List<TeamMemberTaskTeamProject> findAll()
	{
		return taskTeamProDAO.findAll();
	}
	
	public List<TeamMemberTaskTeamProject> findTaskByIdProject(int idProject, int idTask)
	{
		return taskTeamProDAO.findByIdProject(idProject, idTask);
	}
	
	public List<TeamMemberTaskTeamProject> findTaskByIdProjectAll(int idProject)
	{
		return taskTeamProDAO.findByIdProjectAll(idProject);
	}
	
	public List<TeamMemberTaskTeamProject> findByEmailUser(String email)
	{
		return taskDao.findByEmailUser(email);
	}
	
	public List<TaskTeamProject> findByIdProject(int id)
	{
		return taskDao.findByIdProject(id);
	}
	
	public TaskTeamProject findByIdTask(int id)
	{
		return taskDao.find(id);
	}
	
	public TaskTeamProject create(TaskTeamProject taskTeamProject)
	{
		return taskDao.create(taskTeamProject);
	}
	
	public TeamMemberTaskTeamProject createMemberTask(TeamMemberTaskTeamProject t)
	{
		return taskTeamProDAO.create(t);
	}
}
