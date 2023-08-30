package com.entertain.biz.board.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entertain.biz.board.BoardService;
import com.entertain.biz.board.BoardDTO;
import com.entertain.biz.board.CommentDTO;
import com.entertain.biz.board.CriteriaDTO;


@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDAO boardDAO;


public void createBoard(BoardDTO dto) {

	boardDAO.createBoard(dto);
}
	
	
	public List<Map<String, Object>> getBoardList(CriteriaDTO cri) {
		return boardDAO.getBoardList(cri);
	}
	
	public List<Map<String, Object>> getSearchList(CriteriaDTO cri){

		return boardDAO.getSearchList(cri);
		
	}
	

	public BoardDTO getOneBoard(int number) {
		return boardDAO.getOneBoard(number);
	}


	@Override
	public List<CommentDTO> getCommentList(int number) {
		
		return boardDAO.getCommentList(number);
	}
	
	@Override
	public void createComment(CommentDTO dto) {
		boardDAO.createComment(dto);
	}
	@Override
	public void deleteBoard(int number) {
		boardDAO.deleteBoard(number);
	}

	
	public void updateBoard(BoardDTO dto) {
		boardDAO.updateBoard(dto);
	}
	
	public void updateComment(CommentDTO dto) {
		boardDAO.updateComment(dto);
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
	
	public int getSearchBoardCount(CriteriaDTO cri) {
		return boardDAO.getSearchBoardCount(cri);
	}
	
}
	
