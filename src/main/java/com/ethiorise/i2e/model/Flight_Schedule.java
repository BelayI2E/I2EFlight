package com.ethiorise.i2e.model;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity

public class Flight_Schedule implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	
	@Column(name="flight_number",nullable=false)
	private String flight_number;
	
	@Column(name="departure_time")
	@Temporal(value=TemporalType.TIMESTAMP)
	private Date departure_date;
	
	@Column(name="arrival_date")
	@Temporal(value=TemporalType.TIMESTAMP)
	private Date arrival_date;
	
	
	public Flight_Schedule() {}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getFlight_number() {
		return flight_number;
	}

	public void setFlight_number(String flight_number) {
		this.flight_number = flight_number;
	}

	public Date getDeparture_date() {
		return departure_date;
	}

	public void setDeparture_date(Date departure_date) {
		this.departure_date = departure_date;
	}

	public Date getArrival_date() {
		return arrival_date;
	}

	public void setArrival_date(Date arrival_date) {
		this.arrival_date = arrival_date;
	}

	
	
	
	

}
