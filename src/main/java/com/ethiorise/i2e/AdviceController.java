package com.ethiorise.i2e;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdviceController {
	
	
	@RequestMapping(value="/info",method=RequestMethod.GET)
	public ModelAndView info() {
		ModelAndView infoModel= new ModelAndView("info");
		//some implementation
		return infoModel;
	}
	
	@RequestMapping(value="/travel_advice",method=RequestMethod.GET)
	public ModelAndView travelAdvice() {
		ModelAndView adviceModel= new ModelAndView("travel_advice");
		/*
		 * some code implementation
		 */
		return adviceModel;
		 
	}
	
	

}
