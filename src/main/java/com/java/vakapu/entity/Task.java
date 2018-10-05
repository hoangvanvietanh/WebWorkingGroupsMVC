package com.java.vakapu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="task")
public class Task {
	
	@Id
	@Column(name="idtask")
	private int id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="completed")
	private String completed;
	
	@Column(name="description")
	private String description;
	
	@ManyToOne
	@JoinColumn(name="idproject")
	private InfoProject idProject;

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

	public InfoProject getIdProject() {
		return idProject;
	}

	public void setIdProject(InfoProject idProject) {
		this.idProject = idProject;
	}

	

	
	
	
}
