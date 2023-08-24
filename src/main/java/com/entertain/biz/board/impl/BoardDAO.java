package com.entertain.biz.board.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.entertain.biz.board.BoardVO;
import com.entertain.biz.board.CommentVO;
import com.entertain.biz.board.Criteria;

@Repository
public class BoardDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	public List<Map<String, Object>> getBoardList(Criteria cri) {

		return mybatis.selectList("BoardDAO.getBoardList", cri);
	}
	
	public List<Map<String, Object>> getSearchList(Criteria cri){

		return mybatis.selectList("BoardDAO.getSearchList", cri);
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
	
	public void setBoardViewCount(int number) {
		mybatis.update("BoardDAO.setBoardViewCount", number);
	}
	
	public Integer getOneCommentCount(int number) {
		return mybatis.selectOne("BoardDAO.getOneCommentCount", number);
	}
	
	public int getBoardCount() {
		return mybatis.selectOne("BoardDAO.getBoardCount");
	}
	
	public int getSearchBoardCount(Criteria cri) {
		return mybatis.selectOne("BoardDAO.getSearchBoardCount", cri);
	}
}
