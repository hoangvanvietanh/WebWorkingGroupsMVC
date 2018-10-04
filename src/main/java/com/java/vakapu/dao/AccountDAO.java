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
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public List<Account> findAll()
	{
		Session session = getSession();
		TypedQuery<Account> query = session.createQuery("FROM Account", Account.class);
		List<Account> account = query.getResultList();
		return account;
	}
	
	public Account findByEmail(String email)
	{
		return getSession().find(Account.class, email);
	}
	
	public Account createAccount(Account account)
	{
		Session session = getSession();
		session.save(account);
		return account;
	}
	
	public Account updateAccount(Account account)
	{
		Session session = getSession();
		session.update(account);
		return account;
	}
	
	public void deleteAccount(Account account)
	{
		Session session = getSession();
		session.delete(account);
	}
}
