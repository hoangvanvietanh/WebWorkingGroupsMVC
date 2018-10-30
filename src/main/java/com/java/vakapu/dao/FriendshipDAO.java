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
		TypedQuery<Friendship> query = getSession().createQuery("select a from Friendship a where a.emailUser.email =:emailUser and a.status =:status",Friendship.class);
		query.setParameter("emailUser", emailUser);
		query.setParameter("status", status);
		return query.getResultList();
	}
	
	public Friendship findFriendAndUser(String emailUser, String emailFriend)
	{
		TypedQuery<Friendship> query = getSession().createQuery("select a from Friendship a where a.emailUser.email =:emailUser and a.emailFriend.email =:emailFriend",Friendship.class);
		query.setParameter("emailUser", emailUser);
		query.setParameter("emailFriend", emailFriend);
		return query.getSingleResult();
	}
	
	public Friendship create(Friendship friend)
	{
		getSession().save(friend);
		return friend;
	}
	
	public Friendship update(Friendship friend)
	{
		getSession().update(friend);
		return friend;
	}
}
