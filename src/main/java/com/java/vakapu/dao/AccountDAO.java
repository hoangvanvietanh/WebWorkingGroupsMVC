package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
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
	
	public Account findEmail(String email)
	{
		Session session = sessionFactory.openSession();
		return session.find(Account.class, email);
	}
	
	public Account create(Account account) {
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		session.save(account);
		tran.commit();
		session.close();
		return account;
	}
	
	public Account update(Account account) {
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		session.update(account);
		tran.commit();
		session.close();
		return account;
	}
	
	public Account delete(Account account) {
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		session.delete(account);
		tran.commit();
		session.close();
		return account;
	}
}
