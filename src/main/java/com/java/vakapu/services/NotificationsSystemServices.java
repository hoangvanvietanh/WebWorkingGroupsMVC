package com.java.vakapu.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.vakapu.dao.NotificationsSystemDAO;
import com.java.vakapu.entity.NotificationSystem;

@Service
@Transactional
public class NotificationsSystemServices {

	@Autowired
	private NotificationsSystemDAO notificationsSystemDAO;
	
	public NotificationSystem create(NotificationSystem messagesSystem)
	{
		return notificationsSystemDAO.create(messagesSystem);
	}
	
	public NotificationSystem update(NotificationSystem MessagesSystem) {
		return notificationsSystemDAO.update(MessagesSystem);
	}
	
	public List<NotificationSystem> findByEmail(String email){
		return notificationsSystemDAO.findByEmail(email);
	}
	
	public NotificationSystem find(int id) {
		return notificationsSystemDAO.find(id);
	}
}
