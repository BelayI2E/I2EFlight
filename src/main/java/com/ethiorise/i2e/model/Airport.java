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
	
	@Column(name="airport_location",nullable=false)
	private String airport_location;
	
	@Column(name="airport_description",nullable=false)
	private String airport_description;
	
	@ManyToOne
	@JoinColumn(name="departure_airport")
	private Flight departure;
	@ManyToOne
	@JoinColumn(name="arrival_airport")
	private Flight arrival;
	
	public long getId() {
		return id;
	}



	public Airport() {}
	

	public Flight getDeparture() {
		return departure;
	}



	public void setDeparture(Flight departure) {
		this.departure = departure;
	}



	public Flight getArrival() {
		return arrival;
	}



	public void setArrival(Flight arrival) {
		this.arrival = arrival;
	}



	public String getAirport_location() {
		return airport_location;
	}

	public void setAirport_location(String airport_location) {
		this.airport_location = airport_location;
	}

	public String getAirport_description() {
		return airport_description;
	}

	public void setAirport_description(String airport_description) {
		this.airport_description = airport_description;
	}
	
	

}
