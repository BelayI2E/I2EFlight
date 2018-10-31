package com.ethiorise.i2e.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Flight implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	
	
	
	@ManyToOne(fetch=FetchType.LAZY,cascade=CascadeType.ALL)
	@JoinColumn(name="departure_airport_id",nullable=false,insertable=false,updatable=false)
	private Airport departure_airport;
	
	
	@ManyToOne(cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	@JoinColumn(name="arrival_airport_id",insertable=false, updatable=false)
	private Airport arrival_airport;
	
	
	@Temporal(value=TemporalType.DATE)
	private Date departure_date;
	
	
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

	@Temporal(value=TemporalType.DATE)
	private Date arrival_date;
	public Airport getDeparture_airport() {
		return departure_airport;
	}

	public void setDeparture_airport(Airport departure_airport) {
		this.departure_airport = departure_airport;
	}

	public Airport getArrival_airport() {
		return arrival_airport;
	}

	public void setArrival_airport(Airport arrival_airport) {
		this.arrival_airport = arrival_airport;
	}

	
	public  Flight () {}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	

	
	
	
}
