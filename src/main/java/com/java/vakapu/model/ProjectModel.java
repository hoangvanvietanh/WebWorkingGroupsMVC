package com.java.vakapu.model;

import com.java.vakapu.entity.InfoProject;
import com.java.vakapu.entity.Project;

public class ProjectModel {
	private int id;
	private String email;
	private String role;
	private InfoProject infoProject;
	
	public Project toProject()
	{
		Project pro=new Project();
		pro.setId(this.getId());
		pro.setEmail(this.getEmail());
		pro.setRole(this.getRole());
		pro.setInfoproject(this.getInfoProject());
		return pro;
	}
	
	public void fromProject(Project pro)
	{
		this.setId(pro.getId());
		this.setEmail(pro.getEmail());
		this.setRole(pro.getRole());
		this.setInfoProject(pro.getInfoproject());
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
	public InfoProject getInfoProject() {
		return infoProject;
	}
	public void setInfoProject(InfoProject infoProject) {
		this.infoProject = infoProject;
	}
	
	
	
}
