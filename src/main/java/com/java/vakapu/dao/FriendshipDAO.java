package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.Friendship;
import com.java.vakapu.entity.User;

@Repository
public class FriendshipDAO {

	@Autowired
	public SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public List<Friendship> findFriend(String email)
	{
		TypedQuery<Friendship> query = getSession().createQuery("select a from Friendship a where a.email1 =:email or a.email2 =:email",Friendship.class);
		query.setParameter("email", email);
		return query.getResultList();
	}
}
