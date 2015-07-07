package com.softtek.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

import org.hibernate.annotations.ManyToAny;

@Entity
public class Usuario implements Serializable
{
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int usuarioId;
	@Column
	private String softtekIs;
	@Column
	private String nombre;
	@Column
	private String serie;
	@Column
	private String password;
	@ManyToMany
	@JoinTable(name="usersandroles",
			joinColumns=@JoinColumn(name="user_id"),
			inverseJoinColumns=@JoinColumn(name="role_id")
			)
	private List<Role> roles;
	@Enumerated(EnumType.STRING)
	private UserStatus status;

	public Usuario() 
	{

	}

	public Usuario(int usuarioId, String softtekIs, String nombre,
			String serie, String password, List<Role> roles, UserStatus status) 
	{
		super();
		this.usuarioId = usuarioId;
		this.softtekIs = softtekIs;
		this.nombre = nombre;
		this.serie = serie;
		this.password = password;
		this.roles = roles;
		this.status = status;
	}

	public int getUsuarioId() 
	{
		return usuarioId;
	}

	public void setUsuarioId(int usuarioId) 
	{
		this.usuarioId = usuarioId;
	}

	public String getSofttekIs() 
	{
		return softtekIs;
	}

	public void setSofttekIs(String softtekIs) 
	{
		this.softtekIs = softtekIs;
	}

	public String getNombre() 
	{
		return nombre;
	}

	public void setNombre(String nombre) 
	{
		this.nombre = nombre;
	}

	public String getSerie() 
	{
		return serie;
	}

	public void setSerie(String serie) 
	{
		this.serie = serie;
	}

	public String getPassword() 
	{
		return password;
	}

	public void setPassword(String password) 
	{
		this.password = password;
	}

	public List<Role> getRoles() 
	{
		return roles;
	}

	public void setRoles(List<Role> roles) 
	{
		this.roles = roles;
	}

	public UserStatus getStatus() 
	{
		return status;
	}

	public void setStatus(UserStatus status) 
	{
		this.status = status;
	}

	
}
