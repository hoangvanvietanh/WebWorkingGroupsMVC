package com.java.vakapu.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.vakapu.dao.InfoProjectDAO;
import com.java.vakapu.entity.InfoProject;

@Service
@Transactional
public class InfoProjectServices {

	@Autowired
	private InfoProjectDAO infoprojectDao;
	
	public List<InfoProject> findAll()
	{
		return infoprojectDao.findAll();
	}
	
	public InfoProject find(int id)
	{
		return infoprojectDao.find(id);
	}
	
	public InfoProject createInfoProject(InfoProject infoproject)
	{
		return infoprojectDao.create(infoproject);
	}
	
	public InfoProject updateInfoProject(InfoProject infoproject)
	{
		return infoprojectDao.update(infoproject);
	}
	
	public void deleteInfoProject(InfoProject infoproject)
	{
		infoprojectDao.delete(infoproject);
	}
	
}
