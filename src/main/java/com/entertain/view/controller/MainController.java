package com.entertain.view.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

    @RequestMapping(value = "/main")
    public String main() {
        return "main";
    }

    @RequestMapping(value = "/company")
    public String company() {
        return "company";
    }

    @RequestMapping(value = "/signup")
    public String singUp() {
        return "signUp";
    }

    @RequestMapping(value = "/artist")
    public String artist() {
        return "artist";
    }

    @RequestMapping(value = "/audition")
    public String audition() {
        return "audition";
    }

    @RequestMapping(value = "/signUp")
    public String signUp() {
        return "signUp";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(HttpSession session) {
        String returnURL = "";
        String name = (String) session.getAttribute("NAME");
        if (name != null) {
            returnURL = "myPage";
        } else {
            returnURL = "login";
        }
        return returnURL;
    }

}
