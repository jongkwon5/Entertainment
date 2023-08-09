package com.entertain.biz.board;

import java.util.List;

public interface BoardService {

	 List<BoardVO> getBoardList(BoardVO vo);

	 List<BoardVO> getSearchList(BoardVO vo);
	
}
