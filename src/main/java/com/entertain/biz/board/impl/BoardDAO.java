package com.entertain.biz.board.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.entertain.biz.board.BoardVO;
import com.entertain.biz.board.CommentVO;

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
	
	public void createBoard(BoardVO vo) {

		mybatis.insert("BoardDAO.createBoard", vo);
	}

	public BoardVO getOneBoard(int number) {
		return mybatis.selectOne("BoardDAO.getOneBoard", number);
	}
	
	public List<CommentVO> getCommentList(int number) {
		return mybatis.selectList("BoardDAO.getCommentList", number);
	}
	
	public void createComment(CommentVO vo) {
		mybatis.insert("BoardDAO.createComment", vo);
	}
	
	public void deleteBoard(int number) {
		mybatis.delete("BoardDAO.deleteBoard", number);
	}
	
	public void updateBoard(BoardVO vo) {
		mybatis.update("BoardDAO.updateBoard", vo);
	}
	
	public void updateComment(CommentVO vo) {
		mybatis.update("BoardDAO.updateComment", vo);
	}
	
	public void deleteComment(int number) {
		mybatis.delete("BoardDAO.deleteComment", number);
	}
	
}
