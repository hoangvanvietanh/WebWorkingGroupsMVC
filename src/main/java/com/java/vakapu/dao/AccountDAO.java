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
		TypedQuery<Account> query = getSession().createQuery("FROM Account", Account.class);
		List<Account> account = query.getResultList();
		return account;
	}
	
	public Account findByEmail(String email)
	{
		return getSession().find(Account.class, email);
	}
	
	public Account createAccount(Account account)
	{
		getSession().save(account);
		return account;
	}
	
	public Account updateAccount(Account account)
	{
		getSession().update(account);
		return account;
	}
	
	public void deleteAccount(Account account)
	{
		getSession().delete(account);
	}
}
