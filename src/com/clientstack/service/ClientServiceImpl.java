package com.clientstack.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.clientstack.dao.ClientDAO;
import com.clientstack.entity.Client;

@Service
public class ClientServiceImpl implements ClientService {

	// inject the client dao
	@Autowired
	private ClientDAO clientDAO;
	
	
	@Override
	@Transactional
	public List<Client> getClients() {
		return clientDAO.getClients();
	}


	@Override
	@Transactional
	public void saveClient(Client theClient) {
		clientDAO.saveClient(theClient);
	}

}
