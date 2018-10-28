package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.NotificationSystem;
import com.java.vakapu.entity.Todo;

@Repository
public class NotificationsSystemDAO {

	@Autowired
	public SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	public NotificationSystem find(int id) {
		return getSession().find(NotificationSystem.class, id);
	}

	public List<NotificationSystem> findByEmail(String email){
	TypedQuery<NotificationSystem> query = getSession().createQuery("select a from NotificationSystem a where a.toUser.email=:email ORDER BY a.date DESC",NotificationSystem.class);
	query.setParameter("email", email);
	return query.getResultList();
	}
		

	public NotificationSystem create(NotificationSystem messagesSystem) {
		getSession().save(messagesSystem);
		return messagesSystem;
	}

	public NotificationSystem delete(NotificationSystem MessagesSystem) {
		getSession().delete(MessagesSystem);
		return MessagesSystem;
	}

	public NotificationSystem update(NotificationSystem MessagesSystem) {
		getSession().update(MessagesSystem);
		return MessagesSystem;
	}
}
