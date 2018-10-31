package com.ethiorise.i2e.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ethiorise.i2e.model.Airport;
import com.ethiorise.i2e.repository.AirportRepository;

@Service
public class AirportService {
	
	@Autowired
	private AirportRepository airPortRepository;
	
	
	public List<Airport> getAirports(){
		
		return this.airPortRepository.findAll();
	}

}
