package com.entertain.biz.aop;

import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class AopBefore {

	@Before("within(com.homework.biz..*)")
	public void beforeMethod() {
		System.out.println("안녕하세요 제 이름은 박종권입니다~~~Before 실행입니다");
	}
	
	@AfterReturning("within(com.homework.biz..*)")
	public void afterReturningMethod() {
		System.out.println("안녕하세요 제 이름은 박종권입니다~~~afterReturning 실행입니다");
	}
}
