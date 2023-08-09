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
import com.entertain.biz.service.MemberVO;

@Controller
@SessionAttributes("user")
public class UserController{
	@Autowired
	MemberServiceImpl service;
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String login(HttpSession session) { //${userVO.id}, userVO.password
		String returnURL = "";
		String name = (String)session.getAttribute("NAME");
		if(name != null) {
			returnURL = "Entertain_mypage.jsp";
		}else {
			returnURL = "Entertain_login.jsp";
		}
		return returnURL;
	}
	
	@RequestMapping(value="/login_chk.do", method=RequestMethod.POST)
	public String login_chk(HttpSession session, Model model, MemberVO vo) {
		String returnURL = "";
		MemberVO loginvo =service.getMember(vo);
		if(loginvo != null) { //로그인 성공적으로 했다는 뜻
			System.out.println("로그인 성공!");
				session.setAttribute("NAME", loginvo.getName());
				
				session.setAttribute("a", service.getMember(vo));
				model.addAttribute("user_info", service.getMember(vo));
				returnURL = "Entertain_main.jsp"; // 로그인 성공했다는 뜻			
		}else {
			System.out.println("로그인 실패!");
				returnURL = "Entertain_login.jsp"; // 로그인 실패했다는 뜻
		}
		return returnURL;
	}
	
		@RequestMapping(value="/logOut.do")
		public String logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
			HttpSession session = request.getSession();
			response.setContentType("text/html; charset=UTF-8");
			session.invalidate();
			PrintWriter out = response.getWriter();
			out.println("<script>alert('로그아웃 되었습니다'); location.href='login.do';</script>");
			out.flush();

			return "Entertain_main.do";
		}
	}


	
	
	/*
	 * @RequestMapping(value="/login.do", method=RequestMethod.POST) public String
	 * login(UserVO vo, UserDAO userDAO, HttpSession session) throws
	 * IllegalAccessException {
	 * 
	 * if(vo.getId()==null || vo.getId()=="") { throw new
	 * IllegalAccessException("아이디는 반드시입력해야합니다."); } if(userDAO.getUser(vo) != null)
	 * { session.setAttribute("username", userDAO.getUser(vo).getName()); return
	 * "redirect:getBoardList.do"; } else { return "login.jsp"; } }
	 */
