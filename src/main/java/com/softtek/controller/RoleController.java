package com.softtek.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.softtek.model.Role;
import com.softtek.service.RoleService;

@Controller
public class RoleController {

	@Autowired
	private RoleService roleService;

	@RequestMapping("/rolesAlta")
	public String setupForm(Map<String, Object> map) {
		Role role = new Role();
		map.put("role", role);
		map.put("rolesList", roleService.getAllRoles());
		return "role";
	}

	@RequestMapping(value = "/rol.do", method = RequestMethod.POST)
	public String doActions(@ModelAttribute Role role, BindingResult result,
			@RequestParam String action, Map<String, Object> map) {
		Role roleResult = new Role();
		switch (action.toLowerCase()) {
		case "+":
			roleService.add(role);
			roleResult = role;
			break;
		case "editar":
			roleService.edit(role);
			roleResult = role;
			break;
		case "-":
			roleService.delete(role.getRoleId());
			roleResult = role;
			break;
		case "buscar":
			Role searchedRole = roleService.getRoleByName(role.getName());
			roleResult = searchedRole != null ? searchedRole : new Role();
			break;
		}
		map.put("role", roleResult);
		map.put("rolesList", roleService.getAllRoles());

		return "role";
	}

}
