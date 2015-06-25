package com.softtek.service;

import java.util.List;

import com.softtek.model.Usuario;

public interface UsuarioService 
{
	public void add(Usuario usuario);
	public void edit(Usuario usuario);
	public void delete(int usuarioId);
	public Usuario getUsuario(int usuarioId);
	public Usuario getUsuarioByIs(String softtekIs);
	public List getAllUsuario();

}
