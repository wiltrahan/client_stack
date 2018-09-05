package com.clientstack.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/client")
public class ClientController {

	@RequestMapping("/list")
	public String listClients(Model theModel) {
		
		return "list-clients";
	}
}
