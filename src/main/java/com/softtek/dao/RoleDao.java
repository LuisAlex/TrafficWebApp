package com.softtek.dao;

import java.util.List;

import com.softtek.model.Role;

public interface RoleDao {
	public void add(Role role);

	public void edit(Role role);

	public void delete(int roleId);

	public Role getRole(int roleId);

	public Role getRoleByName(String name);

	public List getAllRoles();

}
