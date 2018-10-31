package com.ethiorise.i2e.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Airport implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	
	@Column(name="airport_name",nullable=false)
	private String airport_name;
	
	@Column(name="airport_description",nullable=false)
	private String airport_description;
	
	
	public long getId() {
		return id;
	}



	public Airport() {}
	



	public String getAirport_name() {
		return airport_name;
	}



	public void setAirport_name(String airport_name) {
		this.airport_name = airport_name;
	}



	public String getAirport_location() {
		return airport_name;
	}

	public void setAirport_location(String airport_location) {
		this.airport_name = airport_location;
	}

	public String getAirport_description() {
		return airport_description;
	}

	public void setAirport_description(String airport_description) {
		this.airport_description = airport_description;
	}
	
	

}
