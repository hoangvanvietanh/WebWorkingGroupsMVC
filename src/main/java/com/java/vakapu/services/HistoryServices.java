package com.java.vakapu.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.vakapu.dao.HistoryDAO;
import com.java.vakapu.entity.ProjectHistory;

@Service
@Transactional
public class HistoryServices {

	@Autowired
	private HistoryDAO historyDAO;
	
	public List<ProjectHistory> findByIdProject(int id) {
		return historyDAO.findByIdProject(id);
	}
	
	public ProjectHistory create(ProjectHistory projectHistory) {
		return historyDAO.create(projectHistory);
	}
}
