package com.entertain.biz.board;

import java.util.List;

public interface BoardService {

	 List<BoardVO> getBoardList(BoardVO vo);

	 List<BoardVO> getSearchList(BoardVO vo);
	 
	 void createBoard(BoardVO vo);
	 
	 BoardVO getOneBoard(int number);
	 
	 List<CommentVO> getCommentList(int number);
	
	 void createComment(CommentVO vo);
	 
	 void deleteBoard(int number);
	 
	 void updateBoard(BoardVO vo);
}
