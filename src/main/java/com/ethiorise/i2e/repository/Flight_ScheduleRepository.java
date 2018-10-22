package com.ethiorise.i2e.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ethiorise.i2e.model.Flight_Schedule;

@Repository
public interface Flight_ScheduleRepository extends JpaRepository<Flight_Schedule, Long>{
	

}
