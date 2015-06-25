package com.softtek.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.softtek.dao.RoleDao;
import com.softtek.model.Role;

@Repository
public class RoleDaoImpl implements RoleDao {
	@Autowired
	private SessionFactory session;

	@Override
	public void add(Role role) {
		session.getCurrentSession().save(role);
	}

	@Override
	public void edit(Role role) {
		session.getCurrentSession().update(role);
	}

	@Override
	public void delete(int roleId) {
		session.getCurrentSession().delete(getRole(roleId));
	}

	@Override
	public Role getRole(int roleId) {
		return (Role) session.getCurrentSession().get(Role.class, roleId);
	}

	@Override
	public Role getRoleByName(String name) {
		List role = session
				.getCurrentSession()
				.createQuery(
						"from Role WHERE name LIKE '".concat(name).concat("%'"))
				.list();
		return (Role)role.get(0);
	}

	@Override
	public List getAllRoles() {
		return session.getCurrentSession().createQuery("from Role").list();
	}

}
