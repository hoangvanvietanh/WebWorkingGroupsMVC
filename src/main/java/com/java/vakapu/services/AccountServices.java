package com.java.vakapu.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.vakapu.dao.AccountDAO;
import com.java.vakapu.entity.Account;

@Service
public class AccountServices {

	@Autowired
	private AccountDAO accountDao;
	
	public List<Account> findAll()
	{
		return accountDao.findAll();
	}
	
	public Account findByEmail(String email)
	{
		return accountDao.findByEmail(email);
	}
	
	@Transactional
	public Account createAccount(Account account)
	{
		return accountDao.createAccount(account);
	}
	
	@Transactional
	public Account updateAccount(Account account)
	{
		return accountDao.updateAccount(account);
	}
	
	@Transactional
	public void deleteAccount(Account account)
	{
		accountDao.deleteAccount(account);
	}
	
}
