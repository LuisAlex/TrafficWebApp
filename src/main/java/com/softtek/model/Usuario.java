package com.softtek.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Usuario {
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

	public Usuario() {

	}

	public Usuario(int usuarioId, String softtekIs, String nombre, String serie) {
		super();
		this.usuarioId = usuarioId;
		this.softtekIs = softtekIs;
		this.nombre = nombre;
		this.serie = serie;
	}

	public int getUsuarioId() {
		return usuarioId;
	}

	public void setUsuarioId(int usuarioId) {
		this.usuarioId = usuarioId;
	}

	public String getSofttekIs() {
		return softtekIs;
	}

	public void setSofttekIs(String softtekIs) {
		this.softtekIs = softtekIs;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getSerie() {
		return serie;
	}

	public void setSerie(String serie) {
		this.serie = serie;
	}

}
