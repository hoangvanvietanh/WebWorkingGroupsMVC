package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.InfoProject;


@Repository
public class InfoProjectDAO {

	@Autowired
	public SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public List<InfoProject> findAll(){
		TypedQuery<InfoProject> query = getSession().createQuery("FROM infoproject", InfoProject.class);
		List<InfoProject> contact = query.getResultList();
		return contact;
	}
	
	public InfoProject find(int id) {
		return getSession().find(InfoProject.class, id);
	}
	
	public InfoProject create(InfoProject infoproject) {
		getSession().save(infoproject);
		return infoproject;
	}
	
	public InfoProject delete(InfoProject infoproject) {
		getSession().delete(infoproject);
		return infoproject;
	}
	
	public InfoProject update(InfoProject infoproject) {
		getSession().update(infoproject);
		return infoproject;
	}
	
}
