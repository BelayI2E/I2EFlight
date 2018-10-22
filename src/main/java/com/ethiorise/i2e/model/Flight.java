package com.ethiorise.i2e.model;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Flight implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	@Column(name="flight_type")
	private String flight_type;
	
	@Column(name="departure_airport")
	@OneToMany(mappedBy="departure", cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private Set<Airport> departure_airports;
	
	@Column(name="arrival_airport")
	@OneToMany(mappedBy="arrival",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private Set<Airport> arrival_airport;
	
	public  Flight () {}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getFlight_type() {
		return flight_type;
	}

	public void setFlight_type(String flight_type) {
		this.flight_type = flight_type;
	}

	public Set<Airport> getDeparture_airports() {
		return departure_airports;
	}

	public void setDeparture_airports(Set<Airport> departure_airports) {
		this.departure_airports = departure_airports;
	}

	public Set<Airport> getArrival_airport() {
		return arrival_airport;
	}

	public void setArrival_airport(Set<Airport> arrival_airport) {
		this.arrival_airport = arrival_airport;
	}
	
	
	
	
	
	
	
	
}
