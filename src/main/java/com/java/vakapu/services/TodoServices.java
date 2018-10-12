package com.java.vakapu.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.vakapu.dao.TodoDAO;
import com.java.vakapu.entity.Todo;

@Service
@Transactional
public class TodoServices {

	@Autowired
	private TodoDAO TodoDao;
	
	public List<Todo> findByIdTask(int id)
	{
		return TodoDao.findByIdTask(id);
	}
	
	public Todo create(Todo Todo)
	{
		return TodoDao.create(Todo);
	}
}
