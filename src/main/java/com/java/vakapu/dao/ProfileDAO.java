package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.Profile;

@Repository
public class ProfileDAO {

	@Autowired
	public SessionFactory sessionFactory;
	
	public List<Profile> findAll(){
		Session session = sessionFactory.openSession();
		TypedQuery<Profile> query = session.createQuery("FROM profile", Profile.class);
		List<Profile> contact = query.getResultList();
		return contact;
	}
	
	public Profile find(int id) {
		return sessionFactory.openSession().find(Profile.class, id);
	}
	
	public Profile create(Profile profile) {
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		session.save(profile);
		tran.commit();
		session.close();
		return profile;
	}
	
	public Profile delete(Profile profile) {
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		session.delete(profile);
		tran.commit();
		session.close();
		return profile;
	}
	
	public Profile update(Profile profile) {
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		session.update(profile);
		tran.commit();
		session.close();
		return profile;
	}
}
