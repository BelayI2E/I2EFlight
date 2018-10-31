package com.ethiorise.i2e;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ethiorise.i2e.model.Airport;
import com.ethiorise.i2e.model.Flight;
import com.ethiorise.i2e.service.AirportService;
import com.ethiorise.i2e.service.FlightService;

@Controller
public class WelcomeController {
	@Autowired
	private FlightService flightService;
	@Autowired
	private AirportService airportService;
	@RequestMapping("/home")
	public ModelAndView getHomePage() {	
		ModelAndView model= new ModelAndView("home");
		List<Airport> airports= airportService.getAirports();
		List<Flight> flights= flightService.getAllFlight();
		model.addObject("flights",flights);
		model.addObject("airports",airports);
			
		return model;
	}
	@RequestMapping(value="/home",method=RequestMethod.POST)
	public ModelAndView moreInfos() {
		ModelAndView model= new ModelAndView("home");
		List<Flight> flights= flightService.getAllFlight();
		model.addObject("flights",flights);
		return model;
	}
	@RequestMapping("/flows")
	public String morePages() {
		return "pages";
	}
	
	@GetMapping("/delete")
	public ModelAndView deleteUser() {
		
		return new ModelAndView("delete");
	}
	

}
