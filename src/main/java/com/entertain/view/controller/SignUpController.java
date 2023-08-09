package com.entertain.view.controller;



import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.entertain.biz.service.MemberServiceImpl;
import com.entertain.biz.service.MemberVO;


@Controller
public class SignUpController {

	@Autowired
	private MemberServiceImpl memberImpl;
	
	@RequestMapping(value="/signUp.do", method=RequestMethod.POST)
	public String insertMember(MemberVO vo,  HttpServletResponse response) throws IOException {
		String returnURL = "";
		memberImpl.insertMember(vo);
	
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>alert('회원가입을 축하합니다'); location.href='Entertain_main.do';</script>");
		out.flush();

	
		return "Entertain_main.jsp";
	}
}
