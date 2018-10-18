package com.java.vakapu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="project_user")
public class ProjectUser {
	
	@Id
	@Column(name="id")
	private int id;
	
	@ManyToOne
	@JoinColumn(name="email")
	private User user;
	
//	@ManyToOne
//	@JoinColumn(name="idproject")
//	private TeamProject project;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

//	public TeamProject getProject() {
//		return project;
//	}
//
//	public void setProject(TeamProject project) {
//		this.project = project;
//	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
}

