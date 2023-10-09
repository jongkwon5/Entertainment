package com.entertain.view.user;

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
import org.springframework.web.bind.annotation.SessionAttributes;

import com.entertain.biz.service.MemberServiceImpl;
import com.entertain.biz.service.MemberDTO;

@Controller
@SessionAttributes("user")
public class UserController{
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(HttpSession session) { //${userVO.id}, userVO.password
		String returnURL = "";
		String name = (String)session.getAttribute("NAME");
		if(name != null) {
			returnURL = "myPage";
		}else {
			returnURL = "login";
		}
		return returnURL;
	}
	
	@RequestMapping(value="/myPage")
	public String myPage(HttpSession session) { 
		String returnURL = "myPage";
		return returnURL;
	}
	
	@RequestMapping(value="/login_chk", method=RequestMethod.POST)
	public String login_chk(HttpSession session, Model model, MemberDTO dto) {
		String returnURL = "";
		MemberDTO loginvo =service.getMember(dto);
		if(loginvo != null) { //로그인 성공적으로 했다는 뜻
			System.out.println("로그인 성공!");
				model.addAttribute("user", service.getMember(dto));
				returnURL = "main"; // 로그인 성공했다는 뜻			
		}else {
			System.out.println("로그인 실패!");
				returnURL = "login"; // 로그인 실패했다는 뜻
		}
		return returnURL;
	}
	
	@RequestMapping(value="/logOut")
	public String logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		response.setContentType("text/html; charset=UTF-8");
		session.invalidate();
		PrintWriter out = response.getWriter();
		out.println("<script>alert('로그아웃 되었습니다'); location.href='login';</script>");
		out.flush();
		return "main";
	}
}

