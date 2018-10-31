package com.ethiorise.i2e.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ethiorise.i2e.model.Passenger;


@Repository
public interface PassengerRepository extends JpaRepository<Passenger, Long> {

	
	
}
