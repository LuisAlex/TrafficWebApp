package com.softtek.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softtek.dao.RoleDao;
import com.softtek.model.Role;
import com.softtek.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleDao roleDao;

	@Transactional
	public void add(Role role) {
		roleDao.add(role);
	}

	@Transactional
	public void edit(Role role) {
		roleDao.edit(role);
	}

	@Transactional
	public void delete(int roleId) {
		roleDao.delete(roleId);
	}

	@Transactional
	public Role getRole(int roleId) {
		return roleDao.getRole(roleId);
	}
	
	@Transactional
	public Role getRoleByName(String name) {
		return roleDao.getRoleByName(name);
	}

	@Transactional
	public List getAllRoles() {
		return roleDao.getAllRoles();
	}

}
