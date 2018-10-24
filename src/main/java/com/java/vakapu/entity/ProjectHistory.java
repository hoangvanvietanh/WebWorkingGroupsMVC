package com.java.vakapu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="project_history")
public class ProjectHistory {

	@Id
	@Column(name="idproject_history")
	private int id;
	
	@Column(name="activity")
	private String activity;
	
	@Column(name="user")
	private String user;
	
	@Column(name="last")
	private String last;
	
	@Column(name="date")
	private String date;
	
	@Column(name="id_last")
	private int id_last;
	
	@Column(name="id_user")
	private String id_user;
	
	@ManyToOne
	@JoinColumn(name="teamproject")
	private TeamProject teamProject;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getActivity() {
		return activity;
	}

	public void setActivity(String activity) {
		this.activity = activity;
	}

	public TeamProject getTeamProject() {
		return teamProject;
	}

	public void setTeamProject(TeamProject teamProject) {
		this.teamProject = teamProject;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getLast() {
		return last;
	}

	public void setLast(String last) {
		this.last = last;
	}

	public int getId_last() {
		return id_last;
	}

	public void setId_last(int id_last) {
		this.id_last = id_last;
	}

	public String getId_user() {
		return id_user;
	}

	public void setId_user(String id_user) {
		this.id_user = id_user;
	}

	
	
	
}
