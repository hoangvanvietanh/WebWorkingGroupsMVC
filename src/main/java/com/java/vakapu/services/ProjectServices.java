package com.java.vakapu.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.vakapu.dao.ProjectDAO;
import com.java.vakapu.entity.TeamMemberTeamProject;
import com.java.vakapu.entity.TeamProject;

@Service
@Transactional
public class ProjectServices {

	@Autowired
	private ProjectDAO projectDao;
	
	public List<TeamMemberTeamProject> findAll()
	{
		return projectDao.findAll();
	}
	
	public TeamProject find(int id)
	{
		return projectDao.find(id);
	}
	
	public List<TeamMemberTeamProject> findByIdTeam(int id)
	{
		return projectDao.findByIdTeam(id);
	}
	
	public List<Integer> findByIdTeam2(int id)
	{
		return projectDao.findByIdTeam2(id);
	}
	public List<TeamMemberTeamProject> findByEmail(String email)
	{
		return projectDao.findByEmail(email);
	}
	
	public TeamProject createProject(TeamProject teamProject)
	{
		return projectDao.create(teamProject);
	}
	
	public TeamProject updateProject(TeamProject teamProject)
	{
		return projectDao.update(teamProject);
	}
	
	public void deleteProject(TeamProject teamProject)
	{
		projectDao.delete(teamProject);
	}
	
}
