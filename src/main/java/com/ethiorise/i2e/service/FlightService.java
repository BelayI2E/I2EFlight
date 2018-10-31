package com.ethiorise.i2e.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ethiorise.i2e.model.Flight;
import com.ethiorise.i2e.repository.FlightRepository;

@Service
public class FlightService {
	
	@Autowired
	private FlightRepository flightRepository;
	
	public List<Flight> getAllFlight(){
		
		return this.flightRepository.findAll();
	}

}
