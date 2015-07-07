package com.softtek.service;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softtek.dao.UsuarioDao;
import com.softtek.model.Role;
import com.softtek.model.Usuario;


@Service("myUserDetailsService")
public class MyUserDetailsService implements UserDetailsService 
{

	@Autowired
    private UsuarioDao usuarioDAO;
	@Override
	@Transactional
	public UserDetails loadUserByUsername(String username)throws UsernameNotFoundException 
	{
		
			Usuario user = usuarioDAO.getUsuarioByCrite(username);
	        if(user == null) {
	            throw new UsernameNotFoundException("No user found for username '" + username +"'.");
	        }
	
			Collection<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
			for(Role role : user.getRoles())
				{
					authorities.add(new GrantedAuthorityImpl(role.getName()));
				}
		String password = user.getPassword();
		String nombre = user.getNombre();
		org.springframework.security.core.userdetails.User ALguien = new User(nombre, password, authorities);
        return ALguien;
    }

	

}
