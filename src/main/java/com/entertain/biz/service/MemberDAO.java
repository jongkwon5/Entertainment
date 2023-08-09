package com.entertain.biz.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	public MemberVO getMember(MemberVO vo) {
		return mybatis.selectOne("Member.getMember", vo);
	}
	public void insertMember(MemberVO vo) {
		mybatis.insert("Member.insertMember", vo);
		
	}
	
	
}
