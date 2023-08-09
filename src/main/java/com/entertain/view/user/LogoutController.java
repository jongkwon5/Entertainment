/*
 * package com.entertain.view.user;
 * 
 * import java.io.IOException; import java.io.PrintWriter;
 * 
 * import javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse; import
 * javax.servlet.http.HttpSession;
 * 
 * import org.springframework.stereotype.Controller; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.servlet.ModelAndView;
 * 
 * @Controller public class LogoutController {
 * 
 * 
 * @RequestMapping("/logOut.do") public String logout(HttpServletRequest
 * request, HttpServletResponse response) throws IOException { HttpSession
 * session = request.getSession();
 * response.setContentType("text/html; charset=UTF-8"); session.invalidate();
 * PrintWriter out = response.getWriter();
 * out.println("<script>alert('로그아웃 되었습니다'); location.href='login.do';</script>"
 * ); out.flush();
 * 
 * 
 * 
 * return "Entertain_main.do"; } }
 */