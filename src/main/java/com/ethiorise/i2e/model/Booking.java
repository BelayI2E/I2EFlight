package com.ethiorise.i2e.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Booking implements Serializable{


	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	
	@Temporal(value=TemporalType.TIMESTAMP)
	@Column(name="booking_date")
	private Date booking_date;
	
	@ManyToOne
	@JoinColumn(name="passenger_id",foreignKey=@ForeignKey(name="passenger_id"))
	private Passenger passenger;
	
	@OneToOne
	@JoinColumn(name="travel_class_id",foreignKey=@ForeignKey(name="travel_class_id"))
	private Travel_Class travel_class;
	@OneToOne
	@JoinColumn(name="flight_id",foreignKey=@ForeignKey(name="flight_id"))
	private Flight flight;
	
	
	
	public Booking() {}



	public long getId() {
		return id;
	}



	public void setId(long id) {
		this.id = id;
	}



	public Date getBooking_date() {
		return booking_date;
	}



	public void setBooking_date(Date booking_date) {
		this.booking_date = booking_date;
	}



	public Passenger getPassenger() {
		return passenger;
	}



	public void setPassenger(Passenger passenger) {
		this.passenger = passenger;
	}



	public Travel_Class getTravel_class() {
		return travel_class;
	}



	public void setTravel_class(Travel_Class travel_class) {
		this.travel_class = travel_class;
	}



	public Flight getFlight() {
		return flight;
	}



	public void setFlight(Flight flight) {
		this.flight = flight;
	}
	
	
	
	

}
