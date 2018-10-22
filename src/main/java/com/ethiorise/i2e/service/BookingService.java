package com.ethiorise.i2e.service;

import java.util.List;

import com.ethiorise.i2e.model.Booking;

public interface BookingService {
	
	void save(Booking booking);
	void delete(Booking booking);
	Booking findById(long id);
	List<Booking> findAll();
	long count();
	boolean existtsById(Long id);
	
	
	

}
