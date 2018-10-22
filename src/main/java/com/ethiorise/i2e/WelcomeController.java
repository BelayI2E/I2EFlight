package com.ethiorise.i2e;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WelcomeController {
	@RequestMapping("/home")
	public String getHomePage() {
		return "welcome";
	}
	@RequestMapping("/more")
	public String moreInfos() {
		return "about";
	}
	@RequestMapping("/flows")
	public String morePages() {
		return "pages";
	}

}
