package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.InfoProject;


@Repository
public class InfoProjectDAO {

	@Autowired
	public SessionFactory sessionFactory;
	
	public List<InfoProject> findAll(){
		Session session = sessionFactory.openSession();
		TypedQuery<InfoProject> query = session.createQuery("FROM infoproject", InfoProject.class);
		List<InfoProject> contact = query.getResultList();
		return contact;
	}
	
	public InfoProject find(int id) {
		return sessionFactory.openSession().find(InfoProject.class, id);
	}
	
	public InfoProject create(InfoProject infoproject) {
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		session.save(infoproject);
		tran.commit();
		session.close();
		return infoproject;
	}
	
	public InfoProject delete(InfoProject infoproject) {
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		session.delete(infoproject);
		tran.commit();
		session.close();
		return infoproject;
	}
	
	public InfoProject update(InfoProject infoproject) {
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		session.update(infoproject);
		tran.commit();
		session.close();
		return infoproject;
	}
	
}
