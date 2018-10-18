package com.java.vakapu.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.vakapu.dao.TaskDAO;
import com.java.vakapu.dao.TaskTeamProjectDAO;
import com.java.vakapu.entity.TaskTeamProject;
import com.java.vakapu.entity.TeamMemberTaskTeamProject;

@Service
@Transactional
public class TaskServices {

	@Autowired
	private TaskDAO taskDao;
	
	@Autowired
	private TaskTeamProjectDAO taskTeamProDAO;
	
	public TaskTeamProject findById(int id)
	{
		return taskDao.find(id);
	}
	
	public List<TeamMemberTaskTeamProject> findAll()
	{
		return taskTeamProDAO.findAll();
	}
	
	public List<TeamMemberTaskTeamProject> findTaskByIdProject(int id)
	{
		return taskTeamProDAO.findByIdProject(id);
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
}
