package com.java.vakapu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="teammember_taskteamproject")
public class TeamMemberTaskTeamProject {

	@Id
	@Column(name="idteammember_taskteamproject")
	private int id;
	
	@ManyToOne
	@JoinColumn(name="idteammember_teamproject")
	private TeamMemberTeamProject teamMemberTeamProject;
	
	@ManyToOne
	@JoinColumn(name="idtaskteamproject")
	private TaskTeamProject taskTeamProject;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public TeamMemberTeamProject getTeamMemberTeamProject() {
		return teamMemberTeamProject;
	}

	public void setTeamMemberTeamProject(TeamMemberTeamProject teamMemberTeamProject) {
		this.teamMemberTeamProject = teamMemberTeamProject;
	}

	public TaskTeamProject getTaskTeamProject() {
		return taskTeamProject;
	}

	public void setTaskTeamProject(TaskTeamProject taskTeamProject) {
		this.taskTeamProject = taskTeamProject;
	}
	
	
}
