package com.dxs.security;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.dxs.dao.IUserDAO;

@Service
public class MyUserDetailsService implements UserDetailsService{
	
	@Autowired
	private IUserDAO userDAO;
	
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		//取得用户的权限
		com.dxs.bean.User users = userDAO.getUserByUserName(username);
		if(users == null)
			throw new UsernameNotFoundException(username+" not exist!");
		
		Collection<GrantedAuthority> authorities = getGrantedAuthorities(users);
		//封装成spring security的user
		User userdetail = new User(users.getUsername(), users.getPassword(), true, true, true, true, authorities);
		
		return userdetail;
	}
	
	//取得用户的权限
	private Collection<GrantedAuthority> getGrantedAuthorities(com.dxs.bean.User users){
		Set<GrantedAuthority> authSet = new HashSet<GrantedAuthority>();
		authSet.add(new GrantedAuthorityImpl("ROLE_USER"));
		return authSet;
	}

}
