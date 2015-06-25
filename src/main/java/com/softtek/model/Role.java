package com.softtek.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Role {
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int roleId;
	@Column
	private String name;
	@Column
	private String description;

	public Role() {
	}

	/**
	 * @param roleId
	 * @param name
	 * @param description
	 */
	public Role(int roleId, String name, String description) {
		super();
		this.roleId = roleId;
		this.name = name;
		this.description = description;
	}


	/**
	 * @return the roleId
	 */
	public int getRoleId() {
		return roleId;
	}

	/**
	 * @param roleId the roleId to set
	 */
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description
	 *            the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

}
