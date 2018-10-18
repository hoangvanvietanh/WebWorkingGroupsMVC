package com.java.vakapu.model;

import com.java.vakapu.entity.TeamProject;
import com.java.vakapu.entity.TaskTeamProject;

public class TaskModel {

	private int idtask;

	private String name;

	private String completed;

	private String description;

	private TeamProject teamProject;

	private String owner;
	
	private String startDate;
	
	private String endDate;

	public void fromTask(TaskTeamProject taskTeamProject) {
		this.setIdtask(taskTeamProject.getId());
		this.setName(taskTeamProject.getName());
		this.setCompleted(taskTeamProject.getCompleted());
		this.setDescription(taskTeamProject.getDescription());
		//this.setProject(taskTeamProject.getProject());
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
		//taskTeamProject.setProject(this.getProject());
		taskTeamProject.setOwner(this.getOwner());
		taskTeamProject.setStartDate(this.startDate);
		taskTeamProject.setEndDate(this.endDate);
		return taskTeamProject;
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

	public String getCompleted() {
		return completed;
	}

	public void setCompleted(String completed) {
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

	public TeamProject getProject() {
		return teamProject;
	}

	public void setProject(TeamProject teamProject) {
		this.teamProject = teamProject;
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
