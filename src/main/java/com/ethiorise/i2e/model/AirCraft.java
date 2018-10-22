package com.ethiorise.i2e.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class AirCraft implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	
	@Column(name="aircraft_name",nullable=false)
	private String aircraft_name;
	@Column(name="aircraft_capacity",nullable=false)
	private long aircraft_capacity;
	@Column(name="bussiness_class_capacity",nullable=false)
	private long bussiness_class_capacity;
	@Column(name="economy_class_capacity",nullable=false)
	private long economy_class_capacity;
	
	public AirCraft() {}

	public long getId() {
		return id;
	}

	public String getAircraft_name() {
		return aircraft_name;
	}

	public void setAircraft_name(String aircraft_name) {
		this.aircraft_name = aircraft_name;
	}

	public long getAircraft_capacity() {
		return aircraft_capacity;
	}

	public void setAircraft_capacity(long aircraft_capacity) {
		this.aircraft_capacity = aircraft_capacity;
	}

	public long getBussiness_class_capacity() {
		return bussiness_class_capacity;
	}

	public void setBussiness_class_capacity(long bussiness_class_capacity) {
		this.bussiness_class_capacity = bussiness_class_capacity;
	}

	public long getEconomy_class_capacity() {
		return economy_class_capacity;
	}

	public void setEconomy_class_capacity(long economy_class_capacity) {
		this.economy_class_capacity = economy_class_capacity;
	}
	
	
	
	
	
	
	
	

}
