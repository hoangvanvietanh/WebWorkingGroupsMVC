package com.java.vakapu.model;

import com.java.vakapu.entity.Project;
import com.java.vakapu.entity.ProjectUser;

public class ProjectUserModel {
	private int id;
	private String email;
	private String role;
	private Project idproject;
	
	public ProjectUser toProjectUser()
	{
		ProjectUser pro=new ProjectUser();
		pro.setId(this.getId());
		pro.setEmail(this.getEmail());
		pro.setRole(this.getRole());
		pro.setIdproject(this.getIdproject());
		return pro;
	}
	
	public void fromProjectUser(ProjectUser pro)
	{
		this.setId(pro.getId());
		this.setEmail(pro.getEmail());
		this.setRole(pro.getRole());
		this.setIdproject(pro.getIdproject());
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}

	public Project getIdproject() {
		return idproject;
	}

	public void setIdproject(Project idproject) {
		this.idproject = idproject;
	}
	
	
	
	
}
