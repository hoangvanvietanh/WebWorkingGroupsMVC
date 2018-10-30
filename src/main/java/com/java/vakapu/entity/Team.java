package com.java.vakapu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="team")
public class Team {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="idteam", updatable = false, nullable = false)
	private int idTeam;
	
	@Column(name="name")
	private String name;
	
	@Column(name="description")
	private String description;

	@Column(name="owner")
	private String owner;

	@Column(name="member_amount")
	private int memberAmount;
	
	@Column(name="project_amount")
	private int projectAmount;
	 
	public int getIdTeam() {
		return idTeam;
	}

	public void setIdTeam(int idTeam) {
		this.idTeam = idTeam;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public int getMemberAmount() {
		return memberAmount;
	}

	public void setMemberAmount(int memberAmount) {
		this.memberAmount = memberAmount;
	}

	public int getProjectAmount() {
		return projectAmount;
	}

	public void setProjectAmount(int projectAmount) {
		this.projectAmount = projectAmount;
	}
}
