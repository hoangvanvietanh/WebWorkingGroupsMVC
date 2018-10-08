package com.java.vakapu.model;

import com.java.vakapu.entity.InfoProject;
import com.java.vakapu.entity.Profile;

public class InfoProjectModel {

	private int idproject;
	
	private String name;
	
	private String startDate;
	
	private String status;
	
	private String endDate;
	
	private String owner;
	
	private String description;
	
	private String visibility;
	
	private int idtask;
	
	
	public void fromInfoProject(InfoProject infoproject)
	{
		this.setIdproject(infoproject.getIdproject());
		this.setName(infoproject.getName());
		this.setStartDate(infoproject.getStartDate());
		this.setStatus(infoproject.getStatus());
		this.setEndDate(infoproject.getEndDate());
		this.setOwner(infoproject.getOwner());
		this.setDescription(infoproject.getDescription());
		this.setVisibility(infoproject.getVisibility());
	}
	
	public InfoProject toInfoProject()
	{
		InfoProject infoproject= new InfoProject();
		infoproject.setIdproject(this.getIdproject());
		infoproject.setName(this.getName());
		infoproject.setStartDate(this.getStartDate());
		infoproject.setStatus(this.getStatus());
		infoproject.setEndDate(this.getEndDate());
		infoproject.setOwner(this.getOwner());
		infoproject.setDescription(this.getDescription());
		infoproject.setVisibility(this.getVisibility());
		
		return infoproject;
	}

	public int getIdproject() {
		return idproject;
	}

	public void setIdproject(int idproject) {
		this.idproject = idproject;
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
	
	
	
}
