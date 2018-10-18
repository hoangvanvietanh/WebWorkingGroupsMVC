package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.User;

@Repository
public class ProfileDAO {

	@Autowired
	public SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public List<User> findAll(){
		TypedQuery<User> query = getSession().createQuery("FROM User", User.class);
		List<User> contact = query.getResultList();
		return contact;
	}
	
	public User find(String email) {
		return getSession().find(User.class, email);
	}
	
	public User create(User user) {
		getSession().save(user);
		return user;
	}
	
	public User delete(User user) {
		getSession().delete(user);
		return user;
	}
	
	public User update(User user) {
		getSession().update(user);
		return user;
	}
}
