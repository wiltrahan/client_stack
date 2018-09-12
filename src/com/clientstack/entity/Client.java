package com.clientstack.entity;



import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="client")
public class Client {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="lastName")
	private String lastName;
	
	@Column(name="firstName")
	private String firstName;
	
	@Column(name="phone")
	private String phone;
	
	@Column(name="email")
	private String email;
	
	@Column(name="service")
	private String service;
	
	@Temporal(TemporalType.DATE)
	@Column(name="lastAppt")
	private Date lastAppt;
	
	@Temporal(TemporalType.DATE)
	@Column(name="nextAppt")
	private Date nextAppt;
	
	public Client() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getService() {
		return service;
	}

	public void setService(String service) {
		this.service = service;
	}

	public Date getLastAppt() {
		return lastAppt;
	}

	public void setLastAppt(Date lastAppt) {
		this.lastAppt = lastAppt;
	}

	public Date getNextAppt() {
		return nextAppt;
	}

	public void setNextAppt(Date nextAppt) {
		this.nextAppt = nextAppt;
	}
	
	
	
}
