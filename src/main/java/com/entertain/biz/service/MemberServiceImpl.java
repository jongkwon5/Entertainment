package com.entertain.biz.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl {

	@Autowired
	MemberDAO memberDAO;
	
	public MemberDTO getMember(MemberDTO dto) {
		return memberDAO.getMember(dto);	
	}
	
	public void insertMember(MemberDTO dto) {
		memberDAO.insertMember(dto);
	}
}
