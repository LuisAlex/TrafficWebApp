package com.softtek.service.impl;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softtek.dao.UsuarioDao;
import com.softtek.model.Role;
import com.softtek.model.UserStatus;
import com.softtek.model.Usuario;
@Service("userDetailsService")
public class UserDetailsServiceImpl implements UserDetailsService 
{

	@Autowired
	private UsuarioDao userDao;
	
	@Override
	@Transactional(readOnly = true)
	public UserDetails loadUserByUsername(String softtekIs)
			throws UsernameNotFoundException 
	{
		Usuario user = userDao.getUsuarioByCrite(softtekIs);
		if (user != null)
		{
			String password = user.getPassword();
			//configurando el objeto de seguridad
			boolean enabled = user.getStatus().equals(UserStatus.ACTIVE);
			boolean accountNonExpired = user.getStatus().equals(UserStatus.ACTIVE);
			boolean credentialsNonExpired = user.getStatus().equals(UserStatus.ACTIVE);
			boolean accountNonLocked = user.getStatus().equals(UserStatus.ACTIVE);
			
			// llenando usuarios y sus roles
			
			Collection<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
			for(Role role : user.getRoles())
				{
					authorities.add(new GrantedAuthorityImpl(role.getName()));
				}
		
		
			// spring secure user
			
			
			
			org.springframework.security.core.userdetails.User securityUser = 
					new User(softtekIs, password, enabled, accountNonExpired, 
							credentialsNonExpired, accountNonLocked, authorities);
			
			return securityUser;
		}else
		{
			throw new UsernameNotFoundException("Softtek User no found...");
		}
	}

}
