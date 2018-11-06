package com.java.vakapu.model;

import javax.persistence.Column;

import com.java.vakapu.entity.TeamProject;

public class TeamProjectModel {

	private int id;

	private String name;

	private String startDate;

	private String status;

	private String endDate;

	private String owner;

	private String description;

	private String visibility;

	private int totalTask;
	
	private int taskDone;
	
	private String createAt;
	
	private String[] email;

	private String[] email2;

	private int idtask;

	public void fromProject(TeamProject teamProject) {
		this.setId(teamProject.getId());
		this.setName(teamProject.getName());
		this.setStartDate(teamProject.getStartDate());
		this.setStatus(teamProject.getStatus());
		this.setEndDate(teamProject.getEndDate());
		this.setOwner(teamProject.getOwner());
		this.setDescription(teamProject.getDescription());
		this.setVisibility(teamProject.getVisibility());
		this.setCreateAt(teamProject.getCreateAt());
		this.setTaskDone(teamProject.getTaskDone());
		this.setTotalTask(teamProject.getTotalTask());
	}

	public TeamProject toProject() {
		TeamProject teamProject = new TeamProject();
		teamProject.setId(this.getId());
		teamProject.setName(this.getName());
		teamProject.setStartDate(this.getStartDate());
		teamProject.setStatus(this.getStatus());
		teamProject.setEndDate(this.getEndDate());
		teamProject.setOwner(this.getOwner());
		teamProject.setDescription(this.getDescription());
		teamProject.setVisibility(this.getVisibility());
		teamProject.setCreateAt(this.getCreateAt());
		teamProject.setTotalTask(this.getTotalTask());
		teamProject.setTaskDone(this.getTaskDone());

		return teamProject;
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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public int getTotalTask() {
		return totalTask;
	}

	public void setTotalTask(int totalTask) {
		this.totalTask = totalTask;
	}

	public int getTaskDone() {
		return taskDone;
	}

	public void setTaskDone(int taskDone) {
		this.taskDone = taskDone;
	}

	public String getCreateAt() {
		return createAt;
	}

	public void setCreateAt(String createAt) {
		this.createAt = createAt;
	}

	

}
