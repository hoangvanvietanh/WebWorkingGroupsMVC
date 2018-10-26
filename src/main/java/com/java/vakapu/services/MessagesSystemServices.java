package com.java.vakapu.services;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.vakapu.dao.MessagesSystemDAO;
import com.java.vakapu.entity.MessagesSystem;

@Service
@Transactional
public class MessagesSystemServices {

	@Autowired
	private MessagesSystemDAO messagesSystemDAO;
	
	public MessagesSystem create(MessagesSystem messagesSystem)
	{
		return messagesSystemDAO.create(messagesSystem);
	}
}
