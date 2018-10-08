package com.java.vakapu.services;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.vakapu.dao.ProjectUserDAO;
import com.java.vakapu.entity.Project;
import com.java.vakapu.entity.ProjectUser;


@Service
public class ProjectUserServices {

	@Autowired
	private ProjectUserDAO userDao ;
	
	public List<ProjectUser> findAll()
	{
		return userDao.findAll();
	}
	
	@Transactional
	public ProjectUser findByEmail(String email)
	{
		return userDao.findByEmail(email);
	}
	
	@Transactional
	public ProjectUser createProjectUser(ProjectUser project)
	{
		return userDao.create(project);
	}
	
	@Transactional
	public ProjectUser updateProjectUser(ProjectUser project)
	{
		return userDao.update(project);
	}
		
	@Transactional
	public void deleteProjectUser(ProjectUser project)
	{
		userDao.delete(project);
	}
	
	
}
