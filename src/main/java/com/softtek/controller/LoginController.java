package com.softtek.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
	@RequestMapping("/login")
	public String doLogin()
	{
		return "login";
	}
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout() {
	return doLogin();
	}
	
}
