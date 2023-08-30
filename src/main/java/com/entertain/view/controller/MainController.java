package com.entertain.view.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@RequestMapping(value="/Entertain_main", method=RequestMethod.GET)
	public String main() {
		return "/Entertain_main";
	}
	
	@RequestMapping(value="/Entertain_company", method=RequestMethod.GET)
	public String company() {
		return "Entertain_company";
	}
	
	@RequestMapping(value="/Entertain_signup", method=RequestMethod.GET)
	public String singUp() {
		return "Entertain_signup";
	}
	
	@RequestMapping(value="/Entertain_artist", method=RequestMethod.GET)
	public String artist() {
		return "Entertain_artist";
	}
	
	
	@RequestMapping(value="/Entertain_audition", method=RequestMethod.GET)
	public String audition() {
		return "Entertain_audition";
	}
	

	@RequestMapping(value="/Entertain_mypage", method=RequestMethod.GET)
	public String myPage() {
		return "Entertain_mypage";
	}

	
	
}
