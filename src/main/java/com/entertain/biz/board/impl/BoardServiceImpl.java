package com.entertain.biz.board.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entertain.biz.board.BoardService;
import com.entertain.biz.board.BoardVO;


@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDAO boardDAO;


	@Override
	public List<BoardVO> getBoardList(BoardVO vo) {
		return boardDAO.getBoardList(vo);
	}
	
	@Override
	public List<BoardVO> getSearchList(BoardVO vo){

		return boardDAO.getSearchList(vo);
		
		
	}





}