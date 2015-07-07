package com.softtek.dao;

import java.util.List;

import com.softtek.model.Usuario;

public interface UsuarioDao {
	public void add(Usuario usuario);

	public void edit(Usuario usuario);

	public void delete(int usuarioId);

	public Usuario getUsuario(int usuarioId);

	public Usuario getUsuarioByIs(String softtekIs);
	
	public Usuario getUsuarioByCrite(String softtekIs);

	public List getAllUsuario();

}
