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
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public List<Profile> findAll(){
		Session session = getSession();
		TypedQuery<Profile> query = session.createQuery("FROM profile", Profile.class);
		List<Profile> contact = query.getResultList();
		return contact;
	}
	
	public Profile find(int id) {
		return getSession().find(Profile.class, id);
	}
	
	public Profile create(Profile profile) {
		Session session = getSession();
		session.save(profile);
		return profile;
	}
	
	public Profile delete(Profile profile) {
		Session session = getSession();
		session.delete(profile);
		return profile;
	}
	
	public Profile update(Profile profile) {
		Session session = getSession();
		session.update(profile);
		return profile;
	}
}
