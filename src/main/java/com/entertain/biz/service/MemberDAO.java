package com.entertain.biz.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	public MemberDTO getMember(MemberDTO dto) {
		return mybatis.selectOne("Member.getMember", dto);
	}
	
	public void insertMember(MemberDTO dto) {
		mybatis.insert("Member.insertMember", dto);
	}
}
