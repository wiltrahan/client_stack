package com.clientstack.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.clientstack.entity.Client;

@Repository
public class ClientDAOImpl implements ClientDAO {

	// inject hibernate session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Client> getClients() {
		
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// create a query
		Query<Client> theQuery = currentSession.createQuery("from Client order by lastName", Client.class);
		
		// execute query and get result list
		List<Client> clients = theQuery.getResultList();
		
		//return the results 
		return clients;
	}

	@Override
	public void saveClient(Client theClient) {
		
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save/update the client
		currentSession.saveOrUpdate(theClient);
		
	}

	@Override
	public Client getClient(int theId) {
		
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// retrieve/read from db using the Id
		Client theClient = currentSession.get(Client.class, theId);
		
		return theClient;
	}
}
