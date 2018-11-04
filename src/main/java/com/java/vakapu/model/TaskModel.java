package com.java.vakapu.model;

import com.java.vakapu.entity.TeamProject;

import java.util.List;

import com.java.vakapu.entity.TaskTeamProject;
import com.java.vakapu.entity.TeamMemberTeamProject;

public class TaskModel {

	private int idtask;

	private String name;

	private int completed;

	private String description;

	private String owner;
	
	private String startDate;
	
	private String endDate;

	private String[] email;
	
	private String[] email2;
	
	public void fromTask(TaskTeamProject taskTeamProject) {
		this.setIdtask(taskTeamProject.getId());
		this.setName(taskTeamProject.getName());
		this.setCompleted(taskTeamProject.getCompleted());
		this.setDescription(taskTeamProject.getDescription());
		this.setOwner(taskTeamProject.getOwner());
		this.setStartDate(taskTeamProject.getStartDate());
		this.setEndDate(taskTeamProject.getEndDate());
	}

	public TaskTeamProject toTask() {
		TaskTeamProject taskTeamProject = new TaskTeamProject();
		taskTeamProject.setId(this.getIdtask());
		taskTeamProject.setName(this.getName());
		taskTeamProject.setCompleted(this.getCompleted());
		taskTeamProject.setDescription(this.getDescription());
		taskTeamProject.setOwner(this.getOwner());
		taskTeamProject.setStartDate(this.startDate);
		taskTeamProject.setEndDate(this.endDate);
		return taskTeamProject;
	}

	public String[] getEmail() {
		return email;
	}

	public void setEmail(String[] email) {
		this.email = email;
	}

	public String[] getEmail2() {
		return email2;
	}

	public void setEmail2(String[] email2) {
		this.email2 = email2;
	}

	public int getIdtask() {
		return idtask;
	}

	public void setIdtask(int idtask) {
		this.idtask = idtask;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getCompleted() {
		return completed;
	}

	public void setCompleted(int completed) {
		this.completed = completed;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	
}
