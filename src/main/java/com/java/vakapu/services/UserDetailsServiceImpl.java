package com.java.vakapu.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.java.vakapu.dao.AccountDAO;
import com.java.vakapu.dao.AccountRoleDao;
import com.java.vakapu.entity.Account;
import com.java.vakapu.entity.AccountRole;

@Service
public class UserDetailsServiceImpl  implements UserDetailsService {

	@Autowired
	private AccountDAO accountDao;
	
	@Autowired
	private AccountRoleDao roleDao;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Account account = accountDao.findByEmail(username);
		if (account == null) {
			throw new UsernameNotFoundException(username + " not found!");
		}
		
		// TODO: get user permission here
		List<GrantedAuthority> authorities = new ArrayList<>();
		
		List<AccountRole> roles = roleDao.findRoles(username);
		
		for (AccountRole accountRole : roles) {
			GrantedAuthority authority = new SimpleGrantedAuthority(accountRole.getRole());
			
			authorities.add(authority);
		}
		
		UserDetails user = new User(account.getEmail(),
				account.getPassword(), authorities);
		return user;
	}

}