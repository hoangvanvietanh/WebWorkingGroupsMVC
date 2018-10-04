package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
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
		TypedQuery<Profile> query = getSession().createQuery("FROM Profile", Profile.class);
		List<Profile> contact = query.getResultList();
		return contact;
	}
	
	public Profile find(String email) {
		return getSession().find(Profile.class, email);
	}
	
	public Profile create(Profile profile) {
		getSession().save(profile);
		return profile;
	}
	
	public Profile delete(Profile profile) {
		getSession().delete(profile);
		return profile;
	}
	
	public Profile update(Profile profile) {
		getSession().update(profile);
		return profile;
	}
}
