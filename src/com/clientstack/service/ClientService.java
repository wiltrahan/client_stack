package com.clientstack.service;

import java.util.List;

import com.clientstack.entity.Client;

public interface ClientService {

	public List<Client> getClients();

	public void saveClient(Client theClient);

	public Client getClient(int theId);

	public void deleteClient(int theId);
	
}
