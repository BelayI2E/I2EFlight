package com.ethiorise.i2e;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BookingController {

	@RequestMapping(value="/book_now",method=RequestMethod.GET)
	public ModelAndView instantBooking() {
		ModelAndView bookModel= new ModelAndView("instant_book");
		
		/*
		 * some code implementation here
		 */
		return bookModel;
	}
}
