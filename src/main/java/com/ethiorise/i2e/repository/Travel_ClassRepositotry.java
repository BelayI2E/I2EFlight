package com.ethiorise.i2e.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ethiorise.i2e.model.Travel_Class;

@Repository
public interface Travel_ClassRepositotry extends JpaRepository<Travel_Class, Long>{

}
