package com.java.vakapu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "taskteamproject")
public class TaskTeamProject {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idtaskteamproject")
	private int id;

	@Column(name = "name")
	private String name;

	@Column(name = "completed")
	private int completed;

	@Column(name = "description")
	private String description;
	
	@Column(name="owner")
	private String owner;
	
	@Column(name="startDate")
	private String startDate;
	
	@Column(name="endDate")
	private String endDate;	

	@Column(name="totalTask")
	private int totalTask;
	
	@Column(name="completedAmount")
	private int completedAmount;
	
	@Column(name="due")
	private int due;
	
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

	public int getTotalTask() {
		return totalTask;
	}

	public void setTotalTask(int totalTask) {
		this.totalTask = totalTask;
	}

	public int getCompletedAmount() {
		return completedAmount;
	}

	public void setCompletedAmount(int completedAmount) {
		this.completedAmount = completedAmount;
	}

	public int getDue() {
		return due;
	}

	public void setDue(int due) {
		this.due = due;
	}

}
