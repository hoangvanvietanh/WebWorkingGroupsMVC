package com.java.vakapu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="teammember_teamproject")
public class TeamMemberTeamProject {

	@Id
	@Column(name="idteammember_teamproject")
	private int id;
	
	@ManyToOne
	@JoinColumn(name="idteammember")
	private TeamMember teamMember;
	
	@ManyToOne
	@JoinColumn(name="idteamproject")
	private TeamProject teamProject;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public TeamMember getTeamMember() {
		return teamMember;
	}

	public void setTeamMember(TeamMember teamMember) {
		this.teamMember = teamMember;
	}

	public TeamProject getTeamProject() {
		return teamProject;
	}

	public void setTeamProject(TeamProject teamProject) {
		this.teamProject = teamProject;
	}
}
