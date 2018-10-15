package com.java.vakapu.model;

import com.java.vakapu.entity.Project;

import java.util.Date;

import com.google.protobuf.TextFormat.ParseException;
import com.java.vakapu.entity.Profile;

public class ProjectModel {

	private int idProject;
	
	private String name;
	
	private String startDate;
	
	private String status;
	
	private String endDate;
	
	private String owner;
	
	private String description;
	
	private String visibility;
	
	private String action;
	
	private int idtask;
	
	
	public void fromProject(Project project) 
	{
		this.setIdProject(project.getIdProject());;
		this.setName(project.getName());
		
		this.setStartDate(this.getStartDate());
		
		this.setStatus(project.getStatus());
		this.setEndDate(project.getEndDate());
		this.setOwner(project.getOwner());
		this.setDescription(project.getDescription());
		this.setVisibility(project.getVisibility());
		this.setAction(project.getAction());
	}
	
	public Project toProject() 
	{
		Project project= new Project();
		project.setIdProject(this.getIdProject());;
		project.setName(this.getName());
		project.setStartDate(this.getStartDate());
		project.setStatus(this.getStatus());
		project.setEndDate(this.getEndDate());
		project.setOwner(this.getOwner());
		project.setDescription(this.getDescription());
		project.setVisibility(this.getVisibility());
		project.setAction(this.getAction());
		
		return project;
	}



	public int getIdProject() {
		return idProject;
	}

	public void setIdProject(int idProject) {
		this.idProject = idProject;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getVisibility() {
		return visibility;
	}

	public void setVisibility(String visibility) {
		this.visibility = visibility;
	}

	public int getIdtask() {
		return idtask;
	}

	public void setIdtask(int idtask) {
		this.idtask = idtask;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}
	
	
	
}
