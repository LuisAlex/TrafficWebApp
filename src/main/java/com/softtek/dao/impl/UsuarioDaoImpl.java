package com.softtek.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.softtek.dao.UsuarioDao;
import com.softtek.model.Usuario;

@Repository
public class UsuarioDaoImpl implements UsuarioDao {
	@Autowired
	private SessionFactory session;
	private Query alguien;
	
	@Override
	public void add(Usuario usuario) {
		session.getCurrentSession().save(usuario);
	}

	@Override
	public void edit(Usuario usuario) {
		session.getCurrentSession().update(usuario);
	}

	@Override
	public void delete(int usuarioId) {
		session.getCurrentSession().delete(getUsuario(usuarioId));

	}

	@Override
	public Usuario getUsuario(int usuarioId) {
		return (Usuario)session.getCurrentSession().get(Usuario.class, usuarioId);
		
	}
	
	@Override
	public Usuario getUsuarioByIs(String softtekIs) {
		
		List algunos = session.getCurrentSession().createQuery("from Usuario WHERE softtekIs LIKE '".concat(softtekIs).concat("%'")).list();
		return (Usuario) algunos.get(0);
	}
	

	@Override
	public List getAllUsuario() {
		
		return session.getCurrentSession().createQuery("from Usuario").list();
	}

}
