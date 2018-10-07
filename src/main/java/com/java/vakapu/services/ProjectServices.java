package com.java.vakapu.services;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.vakapu.entity.Project;


@Service
public class ProjectServices {

	@Autowired
	private ProjectServices proServices;
	
	public List<Project> findAll()
	{
		return proServices.findAll();
	}
	
	@Transactional
	public Project findByEmail(String email)
	{
		return proServices.findByEmail(email);
	}
	
	@Transactional
	public Project createProject(Project project)
	{
		return proServices.createProject(project);
	}
	
	@Transactional
	public Project updateProject(Project project)
	{
		return proServices.updateProject(project);
	}
		
	@Transactional
	public void deleteProject(Project project)
	{
		proServices.deleteProject(project);
	}
	
	
}
