package com.ethiorise.i2e.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ethiorise.i2e.model.Booking;

@Repository
public interface BookingRepository extends JpaRepository<Booking, Long>{

}
