package com.java.vakapu.model;

import com.java.vakapu.entity.InfoProject;
import com.java.vakapu.entity.Project;

public class ProjectModel {
	private int id;
	private String email;
	private String role;
	private InfoProject idproject;
	
	public Project toProject()
	{
		Project pro=new Project();
		pro.setId(this.getId());
		pro.setEmail(this.getEmail());
		pro.setRole(this.getRole());
		pro.setIdproject(this.getIdproject());
		return pro;
	}
	
	public void fromProject(Project pro)
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

	public InfoProject getIdproject() {
		return idproject;
	}

	public void setIdproject(InfoProject idproject) {
		this.idproject = idproject;
	}
	
	
	
	
}
