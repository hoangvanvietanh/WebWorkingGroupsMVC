package com.java.vakapu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="friendship")
public class Friendship {
	
	@Id
	@Column(name="idfriendship")
	private int idfriendship;
	
	@OneToOne
	@JoinColumn(name="email_user")
	private User emailUser;
	
	@OneToOne
	@JoinColumn(name="email_friend")
	private User emailFriend;
	
	@Column(name="status")
	private int status;

	public int getIdfriendship() {
		return idfriendship;
	}

	public void setIdfriendship(int idfriendship) {
		this.idfriendship = idfriendship;
	}

	public User getEmailUser() {
		return emailUser;
	}

	public void setEmailUser(User emailUser) {
		this.emailUser = emailUser;
	}

	public User getEmailFriend() {
		return emailFriend;
	}

	public void setEmailFriend(User emailFriend) {
		this.emailFriend = emailFriend;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
}
