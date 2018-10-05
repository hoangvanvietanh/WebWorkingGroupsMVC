package com.java.vakapu.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="account_roles")
public class AccountRole {

	@Id
	@Column(name = "id")
	private int id;

	@Column(name = "email")
	private String email;

	@ManyToOne(cascade=CascadeType.ALL)
	private Account role;

	public int getId() {
		return id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Account getRole() {
		return role;
	}

	public void setRole(Account role) {
		this.role = role;
	}

	public void setId(int id) {
		this.id = id;
	}
}
