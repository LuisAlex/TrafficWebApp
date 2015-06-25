package com.softtek.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.softtek.model.Usuario;
import com.softtek.service.UsuarioService;;

@Controller
public class UsuarioController {
	
	@Autowired
	private UsuarioService usuarioService;
	
	 @RequestMapping("/")
	    public String index() {

	        return "logon";
	    }

	@RequestMapping("/usuariosAlta")
	public String setupForm(Map<String, Object>map)
	{
		Usuario usuario = new Usuario();
		map.put("usuario", usuario);
		map.put("usuarioList", usuarioService.getAllUsuario());
		return "usuario";
	}
	
	@RequestMapping(value="/usuario.do", method=RequestMethod.POST)
	public String doActions(@ModelAttribute Usuario usuario, BindingResult result, @RequestParam String action, Map<String, Object>map){
		Usuario usuarioResult = new Usuario();
			switch (action.toLowerCase())
			{
				case "+":
					usuarioService.add(usuario);
					usuarioResult = usuario;
					break;
				case "editar":
					usuarioService.edit(usuario);
					usuarioResult = usuario;
					break;
				case "-":
					usuarioService.delete(usuario.getUsuarioId());
					usuarioResult = usuario;
					break;
				case "buscar":
					Usuario serachedUsuario = usuarioService.getUsuarioByIs(usuario.getSofttekIs());
					usuarioResult = serachedUsuario != null ? serachedUsuario : new Usuario();
					break;
			}
		map.put("usuario",usuarioResult);
		map.put("usuarioList",usuarioService.getAllUsuario());
		
		return "usuario"; 
	}
	
	 @RequestMapping("/request")
	    public String request() {

	        return "request";
	    }
	
	 @RequestMapping("/logon")
	    public String Logon() {

	        return "logon";
	    }
	 
	 @RequestMapping("/mainmenu")
	    public String Main_Menu() {

	        return "main_menu";
	    }
}
