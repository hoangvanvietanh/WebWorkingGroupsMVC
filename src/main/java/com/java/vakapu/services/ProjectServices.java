package com.java.vakapu.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.vakapu.dao.ProjectDAO;
import com.java.vakapu.entity.Project;

@Service
@Transactional
public class ProjectServices {

	@Autowired
	private ProjectDAO projectDao;
	
	public List<Project> findAll()
	{
		return projectDao.findAll();
	}
	
	public Project find(int id)
	{
		return projectDao.find(id);
	}
	
	public List<Project> findByEmail(String email)
	{
		return projectDao.findByEmail(email);
	}
	
	public Project createProject(Project project)
	{
		return projectDao.create(project);
	}
	
	public Project updateProject(Project project)
	{
		return projectDao.update(project);
	}
	
	public void deleteProject(Project project)
	{
		projectDao.delete(project);
	}
	
}
