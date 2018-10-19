package com.java.vakapu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="teamproject")
public class TeamProject {

	@Id
	@GeneratedValue
	@Column(name="idteamproject")
	private int id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="startDate")
	private String startDate;
	
	@Column(name="status")
	private String status;
	
	@Column(name="endDate")
	private String endDate;
	
	@Column(name="owner")
	private String owner;
	
	@Column(name="description")
	private String description;
	
	@Column(name="visibility")
	private String visibility;

	@Column(name="action")
	private String action;

	@Column(name="total_task")
	private int totalTask;
	
	@Column(name="task_done")
	private int taskDone;
	
	@Column(name="due")
	private int due;
	
	public int getDue() {
		return due;
	}

	public void setDue(int due) {
		this.due = due;
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

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}
	
	
}
