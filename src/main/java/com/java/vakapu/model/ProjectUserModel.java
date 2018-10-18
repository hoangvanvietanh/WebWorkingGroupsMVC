package com.java.vakapu.model;

import com.java.vakapu.entity.TeamProject;
import com.java.vakapu.entity.ProjectUser;
import com.java.vakapu.entity.User;

public class ProjectUserModel {
	private int id;
	private User user;
	private TeamProject teamProject;
	
	public ProjectUser toProjectUser()
	{
		ProjectUser pro=new ProjectUser();
		pro.setId(this.getId());
		pro.setUser(this.getUser());
	//	pro.setProject(this.getProject());
		return pro;
	}
	
	public void fromProjectUser(ProjectUser pro)
	{
		this.setId(pro.getId());
		this.setUser(pro.getUser());
		//this.setProject(pro.getProject());
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public TeamProject getProject() {
		return teamProject;
	}

	public void setProject(TeamProject teamProject) {
		this.teamProject = teamProject;
	}

	
	
	
	
	
}
