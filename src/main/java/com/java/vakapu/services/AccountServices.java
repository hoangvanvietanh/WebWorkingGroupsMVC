package com.java.vakapu.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.vakapu.dao.AccountDAO;
import com.java.vakapu.entity.Account;

@Service
public class AccountServices {

	@Autowired
	AccountDAO account;
	
	public List<Account> findAll()
	{
		return account.findAll();
	}
}
