package com.java.vakapu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="todo")
public class Todo {
	
	@Id
	@Column(name="idtodo")
	private int id;
	
	@Column(name="todo")
	private String todo;
	
	@Column(name="completed")
	private int completed;
	
	@ManyToOne
	@JoinColumn(name="taskTeamProject")
	private TaskTeamProject taskTeamProject;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTodo() {
		return todo;
	}

	public void setTodo(String todo) {
		this.todo = todo;
	}

	public int getCompleted() {
		return completed;
	}

	public void setCompleted(int completed) {
		this.completed = completed;
	}

	public TaskTeamProject getTask() {
		return taskTeamProject;
	}

	public void setTask(TaskTeamProject taskTeamProject) {
		this.taskTeamProject = taskTeamProject;
	}

	public TaskTeamProject getTaskTeamProject() {
		return taskTeamProject;
	}

	public void setTaskTeamProject(TaskTeamProject taskTeamProject) {
		this.taskTeamProject = taskTeamProject;
	}
	
	

}
