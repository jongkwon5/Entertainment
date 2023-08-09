package com.entertain.biz.board.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.entertain.biz.board.BoardVO;

@Repository
public class BoardDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	public List<BoardVO> getBoardList(BoardVO vo) {
		return mybatis.selectList("BoardDAO.getBoardList", vo);
	}
	
	public List<BoardVO> getSearchList(BoardVO vo){
		return mybatis.selectList("BoardDAO.getSearchList", vo);
	}

	
	
	
}
