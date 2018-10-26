package com.java.vakapu.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.MessagesSystem;

@Repository
public class MessagesSystemDAO {

	@Autowired
	public SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public MessagesSystem find(int id) {
		return getSession().find(MessagesSystem.class, id);
	}
	
	public MessagesSystem create(MessagesSystem messagesSystem) {
		getSession().save(messagesSystem);
		return messagesSystem;
	}
	
	public MessagesSystem delete(MessagesSystem MessagesSystem) {
		getSession().delete(MessagesSystem);
		return MessagesSystem;
	}
	
	public MessagesSystem update(MessagesSystem MessagesSystem) {
		getSession().update(MessagesSystem);
		return MessagesSystem;
	}
}
