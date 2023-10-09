package com.entertain.view.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@RequestMapping(value="/main")
	public String main() {
		return "main";
	}
	
	@RequestMapping(value="/company")
	public String company() {
		return "/company";
	}
	
	@RequestMapping(value="/signup")
	public String singUp() {
		return "signUp";
	}
	
	@RequestMapping(value="/artist")
	public String artist() {
		return "artist";
	}
	
	@RequestMapping(value="/audition")
	public String audition() {
		return "audition";
	}
	
	@RequestMapping(value="/mypage")
	public String myPage() {
		return "mypage";
	}
}
