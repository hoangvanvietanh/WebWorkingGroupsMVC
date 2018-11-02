//package com.java.vakapu.entity;
//
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.ManyToOne;
//import javax.persistence.Table;
//
//@Entity
//@Table(name="upload_file")
//public class UploadFile {
//	
//	@Id
//	@Column(name="idupload_file")
//	private int id;
//	
//	@Column(name="file")
//	private String file;
//	
//	@Column(name="date")
//	private String date;
//	
//	@ManyToOne
//	@JoinColumn(name="teamproject")
//	private TeamProject teamProject;
//
//	public int getId() {
//		return id;
//	}
//
//	public void setId(int id) {
//		this.id = id;
//	}
//
//	public String getFile() {
//		return file;
//	}
//
//	public void setFile(String file) {
//		this.file = file;
//	}
//
//	public String getDate() {
//		return date;
//	}
//
//	public void setDate(String date) {
//		this.date = date;
//	}
//
//	public TeamProject getTeamProject() {
//		return teamProject;
//	}
//
//	public void setTeamProject(TeamProject teamProject) {
//		this.teamProject = teamProject;
//	}
//	
//	
//
//}
