package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.vakapu.entity.Account;

@Repository
public class AccountDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Account> findAll()
	{
		Session session = sessionFactory.openSession();
		TypedQuery<Account> query = session.createQuery("FROM Account", Account.class);
		List<Account> account = query.getResultList();
		return account;
	}
}
