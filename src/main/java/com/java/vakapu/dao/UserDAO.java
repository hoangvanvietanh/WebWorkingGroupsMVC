package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.User;

@Repository
public class UserDAO {

	@Autowired
	public SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public List<User> findAll(){
		TypedQuery<User> query = getSession().createQuery("FROM User", User.class);
		List<User> User = query.getResultList();
		return User;
	}
	public List<User> findByIdTeam(int id) {
		TypedQuery<User> query = getSession().createQuery("select a from User a join a.team b where b.id=:id",User.class);
		query.setParameter("id", id);
		return query.getResultList();
	}
	
	public List<User> findByTeamId(int id) {
		TypedQuery<User> query = getSession().createQuery("select a from User a where a.team.id=:id",User.class);
		query.setParameter("id", id);
		return query.getResultList();
	}
	public User findByEmail(String email) {
		return getSession().find(User.class, email);
	}
	
	public User create(User User) {
		getSession().save(User);
		return User;
	}
	
	public User delete(User User) {
		getSession().delete(User);
		return User;
	}
	
	public User update(User User) {
		getSession().update(User);
		return User;
	}
}
