package com.softtek.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Role 
{
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int roleId;
	@Column
	private String name;
	@Column
	private String description;
	@ManyToMany(mappedBy = "roles")
	private List<Usuario> user;

	public Role() 
	{
		
	}

	/**
	 * @param roleId
	 * @param name
	 * @param description
	 * @param user
	 */
	public Role(int roleId, String name, String description, List<Usuario> user) 
	{
		super();
		this.roleId = roleId;
		this.name = name;
		this.description = description;
		this.user = user;
	}

	/**
	 * @return the roleId
	 */
	public int getRoleId() 
	{
		return roleId;
	}

	/**
	 * @param roleId the roleId to set
	 */
	public void setRoleId(int roleId) 
	{
		this.roleId = roleId;
	}

	/**
	 * @return the name
	 */
	public String getName() 
	{
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) 
	{
		this.name = name;
	}

	/**
	 * @return the description
	 */
	public String getDescription() 
	{
		return description;
	}

	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) 
	{
		this.description = description;
	}

	/**
	 * @return the user
	 */
	public List<Usuario> getUser() 
	{
		return user;
	}

	/**
	 * @param user the user to set
	 */
	public void setUser(List<Usuario> user) 
	{
		this.user = user;
	}

}
