package com.java.vakapu.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="project")
public class Project {
	
	@Id
	@Column(name="id")
	private int id;
	
	@Column(name="email")
	private String email;
	
	@Column(name="role")
	private String role;
	
	@OneToOne(cascade = CascadeType.ALL)
	private InfoProject infoproject;
}
