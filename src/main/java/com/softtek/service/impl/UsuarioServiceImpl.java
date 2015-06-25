package com.softtek.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softtek.dao.UsuarioDao;
import com.softtek.model.Usuario;
import com.softtek.service.UsuarioService;

@Service
public class UsuarioServiceImpl implements UsuarioService {

	@Autowired
	private UsuarioDao usuarioDao;

	@Transactional
	public void add(Usuario usuario) {
		usuarioDao.add(usuario);

	}

	@Transactional
	public void edit(Usuario usuario) {
		usuarioDao.edit(usuario);

	}

	@Transactional
	public void delete(int usuarioId) {
		usuarioDao.delete(usuarioId);

	}

	@Transactional
	public Usuario getUsuario(int usuarioId) {
		return usuarioDao.getUsuario(usuarioId);
	}

	@Transactional
	public Usuario getUsuarioByIs(String softtekIs) {
		return usuarioDao.getUsuarioByIs(softtekIs);
	}

	@Transactional
	public List getAllUsuario() {
		// TODO Auto-generated method stub
		return usuarioDao.getAllUsuario();
	}

}
