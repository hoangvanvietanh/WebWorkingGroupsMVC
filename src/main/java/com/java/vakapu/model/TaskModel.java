package com.java.vakapu.model;

import com.java.vakapu.entity.Project;
import com.java.vakapu.entity.Task;

public class TaskModel {

	private int idtask;

	private String name;

	private String completed;

	private String description;

	private Project project;

	private String owner;

	public void fromTask(Task task) {
		this.setIdtask(task.getId());
		this.setName(task.getName());
		this.setCompleted(task.getCompleted());
		this.setDescription(task.getDescription());
		this.setProject(task.getProject());
		this.setOwner(task.getOwner());
	}

	public Task toTask() {
		Task task = new Task();
		task.setId(this.getIdtask());
		task.setName(this.getName());
		task.setCompleted(this.getCompleted());
		task.setDescription(this.getDescription());
		task.setProject(this.getProject());
		task.setOwner(this.getOwner());
		return task;
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

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

}
