package com.ethiorise.i2e.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Transit implements Serializable{


	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	
	@Temporal(value=TemporalType.TIMESTAMP)
	private Date departure_date;
	
	@Temporal(value=TemporalType.TIMESTAMP)
	private Date  arrival_date;
	
	@OneToOne
	@JoinColumn(name="scheduler_id",foreignKey=@ForeignKey(name="sheduler_id"))
	private Flight_Schedule flight_schedule;
	
	
	public Transit() {}


	public long getId() {
		return id;
	}


	public void setId(long id) {
		this.id = id;
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


	public Flight_Schedule getFlight_schedule() {
		return flight_schedule;
	}


	public void setFlight_schedule(Flight_Schedule flight_schedule) {
		this.flight_schedule = flight_schedule;
	}
	
	
	


}
