package com.java.vakapu.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Fetch;

@Entity
@Table(name="member")
public class Member {

	@Id
	@Column(name="idmember")
	private int idmember;
	
	@Column(name="email")
	private String email;
	
	@Column(name="role")
	private String role;
	
	@ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(
        name = "Team_Member", 
        joinColumns = { @JoinColumn(name = "idmember") }, 
        inverseJoinColumns = { @JoinColumn(name = "idteam") }
    )
    Set<Team> team = new HashSet<>();

	public int getIdmember() {
		return idmember;
	}

	public void setIdmember(int idmember) {
		this.idmember = idmember;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Set<Team> getTeam() {
		return team;
	}

	public void setTeam(Set<Team> team) {
		this.team = team;
	}


	
	
}
