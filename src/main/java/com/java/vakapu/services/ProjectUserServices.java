package com.java.vakapu.services;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.vakapu.dao.ProjectUserDAO;
import com.java.vakapu.entity.Project;
import com.java.vakapu.entity.ProjectUser;


@Service
@Transactional
public class ProjectUserServices {

	@Autowired
	private ProjectUserDAO userDao ;
	
	public List<ProjectUser> findAll()
	{
		return userDao.findAll();
	}
	
	public List<ProjectUser> findByEmail(String email)
	{
		return userDao.findByEmail(email);
	}

	public List<ProjectUser> findByID( int id)
	{
		return userDao.findById(id);
	}
	
	public ProjectUser createProjectUser(ProjectUser project)
	{
		return userDao.create(project);
	}

	public ProjectUser updateProjectUser(ProjectUser project)
	{
		return userDao.update(project);
	}

	public void deleteProjectUser(ProjectUser project)
	{
		userDao.delete(project);
	}
	
	
}
