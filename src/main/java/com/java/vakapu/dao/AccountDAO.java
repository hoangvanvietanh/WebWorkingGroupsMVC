package com.java.vakapu.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
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
		session.beginTransaction();
		TypedQuery<Account> query = session.createQuery("FROM Account", Account.class);
		session.getTransaction().commit();
		List<Account> account = query.getResultList();
		return account;
	}
	
	public Account findByEmail(String email)
	{
		Session session=sessionFactory.openSession();
		return session.find(Account.class, email);
	}
	
	public Account createAccount(Account account)
	{
		Session session= sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		session.save(account);
		tran.commit();
		session.close();
		return account;
	}
	
	public Account updateAccount(Account account)
	{
		Session session=(Session) sessionFactory.openSession().beginTransaction();
		session.update(account);
		session.getTransaction().commit();
		session.close();
		return account;
	}
	
	public void deleteAccount(Account account)
	{
		Session session=(Session) sessionFactory.openSession().beginTransaction();
		session.delete(account);
		session.getTransaction().commit();
		session.close();
	}
}
