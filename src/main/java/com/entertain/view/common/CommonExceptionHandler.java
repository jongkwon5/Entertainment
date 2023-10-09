package com.entertain.view.common;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice("com.homework.view")
public class CommonExceptionHandler {
	
	@ExceptionHandler(ArithmeticException.class)
	public ModelAndView handlerArithmeticException(Exception e) {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("exception", e); //해당 예외 객체
		mav.setViewName("common/arithmeticError.jsp");//예외처리를 보여줄 페이지 경로
		
		return mav;
	}
	
	@ExceptionHandler(NullPointerException.class)
	public ModelAndView handlerNullpointerException(Exception e) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("exception", e);
		mav.setViewName("common/nullPointerError.jsp");
		
		return mav;
	}
	@ExceptionHandler(Exception.class)
	public ModelAndView handlerException(Exception e) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("exception", e);
		mav.setViewName("common/error.jsp");
		
		return mav;
	}
}
