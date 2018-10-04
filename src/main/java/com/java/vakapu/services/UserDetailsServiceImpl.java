package com.java.vakapu.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.java.vakapu.entity.Account;

@Service
public class UserDetailsServiceImpl  implements UserDetailsService {

	@Autowired
	private AccountServices accountServices;
	
//	@Autowired
//	private AccountRoleDao roleDao;
	
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		Account account = accountServices.findByEmail(email);
		if (account == null) {
			throw new UsernameNotFoundException(email + " not found!");
		}
		
		// TODO: get user permission here
		List<GrantedAuthority> authorities = new ArrayList<>();
		
//		List<AccountRole> roles = roleDao.findRoles(email);
//		
//		for (AccountRole accountRole : roles) {
//			GrantedAuthority authority = new SimpleGrantedAuthority(accountRole.getRole());
//			
//			authorities.add(authority);
//		}
		
		UserDetails user = new User(account.getEmail(),
				account.getPassword(), authorities);
		return user;
	}

}