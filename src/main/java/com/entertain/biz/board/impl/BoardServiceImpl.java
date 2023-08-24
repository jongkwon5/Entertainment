package com.entertain.biz.board.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entertain.biz.board.BoardService;
import com.entertain.biz.board.BoardVO;
import com.entertain.biz.board.CommentVO;
import com.entertain.biz.board.Criteria;


@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDAO boardDAO;


public void createBoard(BoardVO vo) {

	boardDAO.createBoard(vo);
}
	
	
	public List<Map<String, Object>> getBoardList(Criteria cri) {
		return boardDAO.getBoardList(cri);
	}
	
	public List<Map<String, Object>> getSearchList(Criteria cri){

		return boardDAO.getSearchList(cri);
		
	}
	

	public BoardVO getOneBoard(int number) {
		return boardDAO.getOneBoard(number);
	}


	@Override
	public List<CommentVO> getCommentList(int number) {
		
		return boardDAO.getCommentList(number);
	}
	
	@Override
	public void createComment(CommentVO vo) {
		boardDAO.createComment(vo);
	}
	@Override
	public void deleteBoard(int number) {
		boardDAO.deleteBoard(number);
	}

	
	public void updateBoard(BoardVO vo) {
		boardDAO.updateBoard(vo);
	}
	
	public void updateComment(CommentVO vo) {
		boardDAO.updateComment(vo);
	}

	public void deleteComment(int number) {
		boardDAO.deleteComment(number);
	}
	
	public void setBoardViewCount(int number) {
		boardDAO.setBoardViewCount(number);
	}
	
	public Integer getOneCommentCount(int number) {
		return boardDAO.getOneCommentCount(number);
	}

	@Override
	public int getBoardCount() {
		return boardDAO.getBoardCount();
	}
	
	public int getSearchBoardCount(Criteria cri) {
		return boardDAO.getSearchBoardCount(cri);
	}
	
}
	
