package com.clientstack.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.clientstack.dao.ClientDAO;
import com.clientstack.entity.Client;

@Controller
@RequestMapping("/client")
public class ClientController {
	
	// inject the client dao
	@Autowired
	private ClientDAO clientDAO;

	@RequestMapping("/list")
	public String listClients(Model theModel) {
		
		// get clients from DAO
		List<Client> theClients = clientDAO.getClients();
		
		// add clients to the model
		theModel.addAttribute("clients", theClients);
		
		return "list-clients";
	}
}
