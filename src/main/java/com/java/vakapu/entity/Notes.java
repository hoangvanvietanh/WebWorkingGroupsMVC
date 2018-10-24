package com.java.vakapu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="notes")
public class Notes {

	@Id
	@Column(name="idnotes")
	private int id;
	
	@Column(name="note")
	private String notes;
	
	@Column(name="titlenote")
	private String titleNotes;
	
	@Column(name="date")
	private String date;
	
	@ManyToOne
	@JoinColumn(name="taskteamproject")
	private TaskTeamProject taskTeamProject;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public String getTitleNotes() {
		return titleNotes;
	}

	public void setTitleNotes(String titleNotes) {
		this.titleNotes = titleNotes;
	}

	public TaskTeamProject getTaskTeamProject() {
		return taskTeamProject;
	}

	public void setTaskTeamProject(TaskTeamProject taskTeamProject) {
		this.taskTeamProject = taskTeamProject;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	
}

