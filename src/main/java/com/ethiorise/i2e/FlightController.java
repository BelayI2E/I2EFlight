package com.ethiorise.i2e;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FlightController {
	
	
	@RequestMapping(value="/flights",method=RequestMethod.GET)
	public ModelAndView flights() {
		ModelAndView mod= new ModelAndView("flights");
		// some implementations here ...
		return mod;
		
	}
	@RequestMapping(value="/hotels",method=RequestMethod.GET)
	public ModelAndView hotels() {
		ModelAndView model= new ModelAndView("hotels");
		// some implementations hers
		return model;
		
	}
	
	@RequestMapping(value="/taxis",method=RequestMethod.GET)
	public ModelAndView taxi() {
		ModelAndView taxiModel= new ModelAndView("taxis");
		//some code implementation here
		return taxiModel;
	}
	

}
