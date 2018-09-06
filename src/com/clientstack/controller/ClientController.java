package com.clientstack.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.clientstack.entity.Client;
import com.clientstack.service.ClientService;

@Controller
@RequestMapping("/client")
public class ClientController {
	
	// inject the client service
	@Autowired
	private ClientService clientService;

	@GetMapping("/list")
	public String listClients(Model theModel) {
		
		// get clients from DAO
		List<Client> theClients = clientService.getClients();
		
		// add clients to the model
		theModel.addAttribute("clients", theClients);
		
		return "list-clients";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		
		// model to bind form data
		Client theClient = new Client();
		
		theModel.addAttribute("client", theClient);
		
		return "client-form";
	}
	
	@PostMapping("/saveClient")
	public String saveClient(@ModelAttribute("client") Client theClient) {
		
		// save client using the service
		clientService.saveClient(theClient);
		
		
		return "redirect:/client/list";
		
	}
	
	
}
