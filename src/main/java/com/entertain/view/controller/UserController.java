package com.entertain.view.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;


import com.entertain.biz.user.UserDTO;

import com.entertain.biz.user.impl.UserServiceImpl;

@Controller
@SessionAttributes("user")
public class UserController {

    @Autowired
    UserServiceImpl service;

    @RequestMapping(value = "/loginChk", method = RequestMethod.POST)
    public String login_chk(HttpServletRequest request, HttpServletResponse response, UserDTO dto, Model model) throws IOException {
        String returnURL = "";
        UserDTO login = service.getUserInfo(dto);
        if (login != null) { //로그인 성공적으로 했다는 뜻
            HttpSession session = request.getSession();
            session.setAttribute("user", service.getUserInfo(dto));
            model.addAttribute("user", service.getUserInfo(dto));
            returnURL = "main";
        } else {
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('가입 되어 있지 않는 사용자입니다.'); history.go(-1);</script>");
            out.flush();
            returnURL = "login";
        }
        return returnURL;
    }

    @RequestMapping(value = "/logOut")
    public String logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        session.invalidate();
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<script>alert('로그아웃 되었습니다'); location.href='login';</script>");
        out.flush();
        return "main";
    }

    @RequestMapping(value = "/singUp", method = RequestMethod.GET)
    public String user_singUp(UserDTO dto, HttpServletResponse response, HttpServletRequest request) throws IOException {
        String returnURL = "";
        service.createUserInfo(dto);
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<script>alert('회원가입을 축하합니다'); location.href='main';</script>");
        out.flush();
        return "main";
    }

    @RequestMapping(value = "/idCheck")
    @ResponseBody
    public int idCheck(@RequestParam("id") String id) {
        int cnt = service.getUserIdCheck(id);
        return cnt;
    }
}




