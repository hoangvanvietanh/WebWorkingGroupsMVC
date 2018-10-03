package com.java.vakapu.model;

import com.java.vakapu.entity.Account;

public class AccountModel {
	private String email;
	private String password;
	private String status;
	
	public void formaccount(Account account) {
		this.setPassword(account.getPassword());
		this.setEmail(account.getEmail());
		this.setStatus(account.getStatus());
	}
	public Account toaccount() {
		Account account = new Account();
		account.setStatus(this.getStatus());
		account.setPassword(this.getPassword());
		account.setEmail(this.getEmail());
		return account;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
