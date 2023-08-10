package com.entertain.view.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@RequestMapping(value="/Entertain_main.do", method=RequestMethod.GET)
	public String main() {
		return "/Entertain_main.jsp";
	}
	
	@RequestMapping(value="/Entertain_company.do", method=RequestMethod.GET)
	public String company() {
		return "Entertain_company.jsp";
	}
	
	@RequestMapping(value="/Entertain_signup.do", method=RequestMethod.GET)
	public String singUp() {
		return "Entertain_signup.jsp";
	}
	
	@RequestMapping(value="/Entertain_artist.do", method=RequestMethod.GET)
	public String artist() {
		return "Entertain_artist.jsp";
	}
	
	
	@RequestMapping(value="/Entertain_audition.do", method=RequestMethod.GET)
	public String audition() {
		return "Entertain_audition.jsp";
	}
	

	@RequestMapping(value="/Entertain_mypage.do", method=RequestMethod.GET)
	public String myPage() {
		return "Entertain_mypage.jsp";
	}
}
