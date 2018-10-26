package com.java.vakapu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="messagesSystem")
public class MessagesSystem {

	@Id
	@Column(name="idmessagesSystem")
	private int id;
	
	@Column(name="messages")
	private String messages;
	
	@Column(name="status")
	private int status;
	
	@ManyToOne
	@JoinColumn(name="toUser")
	private User toUser;
	
	@ManyToOne
	@JoinColumn(name="fromUser")
	private User userFrom;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMessages() {
		return messages;
	}

	public void setMessages(String messages) {
		this.messages = messages;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public User getToUser() {
		return toUser;
	}

	public void setToUser(User toUser) {
		this.toUser = toUser;
	}

	public User getUserFrom() {
		return userFrom;
	}

	public void setUserFrom(User userFrom) {
		this.userFrom = userFrom;
	}
	
}
