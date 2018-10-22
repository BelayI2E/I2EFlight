package com.ethiorise.i2e.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ethiorise.i2e.model.Booking;
import com.ethiorise.i2e.repository.BookingRepository;
@Service
public class BookingServiceImpl implements BookingService {
	
	@Autowired
	private BookingRepository bookingRepository;

	@Override
	public void save(Booking booking) {
		this.bookingRepository.save(booking);

	}

	@Override
	public void delete(Booking booking) {
		this.bookingRepository.delete(booking);

	}

	@Override
	public Booking findById(long id) {
		return null;
	}

	@Override
	public List<Booking> findAll() {
		
		return this.bookingRepository.findAll();
	}

	@Override
	public long count() {
		return bookingRepository.count();
	}

	@Override
	public boolean existtsById(Long id) {
		return bookingRepository.existsById(id);
	}

}
