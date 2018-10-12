package com.java.vakapu.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.vakapu.dao.TaskDAO;
import com.java.vakapu.entity.Task;

@Service
@Transactional
public class TaskServices {

	@Autowired
	private TaskDAO taskDao;
	
	public List<Task> findByIdProject(int id)
	{
		return taskDao.findByIdProject(id);
	}
	
	public Task findByIdTask(int id)
	{
		return taskDao.find(id);
	}
	
	public Task create(Task task)
	{
		return taskDao.create(task);
	}
}
