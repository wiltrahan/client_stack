package com.clientstack.dao;

import java.util.List;

import com.clientstack.entity.Client;

public interface ClientDAO {
	public List<Client> getClients();

	public void saveClient(Client theClient);

	public Client getClient(int theId);

	public void deleteClient(int theId);

	public List<Client> searchClients(String theSearchName);
}
