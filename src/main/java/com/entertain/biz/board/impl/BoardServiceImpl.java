package com.entertain.biz.board.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entertain.biz.board.BoardService;
import com.entertain.biz.board.BoardDTO;
import com.entertain.biz.board.CommentDTO;
import com.entertain.biz.board.Criteria;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDAO boardDAO;
	
	public void createBoard(BoardDTO dto) {
		boardDAO.createBoard(dto);
	}
	
	public List<Map<String, Object>> getBoardList(Criteria cri) {
		return boardDAO.getBoardList(cri);
	}
	
	public List<Map<String, Object>> getSearchList(Criteria cri){
		return boardDAO.getSearchList(cri);
	}
	
	public BoardDTO getOneBoard(int number) {
		return boardDAO.getOneBoard(number);
	}

	public List<CommentDTO> getCommentList(int number) {
		return boardDAO.getCommentList(number);
	}
	
	public void createComment(CommentDTO dto) {
		boardDAO.createComment(dto);
	}
	
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

	public int getBoardCount() {
		return boardDAO.getBoardCount();
	}
	
	public int getSearchBoardCount(Criteria cri) {
		return boardDAO.getSearchBoardCount(cri);
	}
	
}
	
