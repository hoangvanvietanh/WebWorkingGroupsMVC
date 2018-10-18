package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.Friendship;

@Repository
public class FriendshipDAO {

	@Autowired
	public SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public List<Friendship> findFriend(String emailUser,int status)
	{
		TypedQuery<Friendship> query = getSession().createQuery("select a from Friendship a where a.emailUser.email =:emailUser or a.status =:status",Friendship.class);
		query.setParameter("emailUser", emailUser);
		query.setParameter("status", status);
		return query.getResultList();
	}
}
