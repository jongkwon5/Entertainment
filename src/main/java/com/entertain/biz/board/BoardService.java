package com.entertain.biz.board;

import java.util.List;

public interface BoardService {

	 List<BoardVO> getBoardList(BoardVO vo, Criteria cri);

	 List<BoardVO> getSearchList(BoardVO vo);
	 
	 void createBoard(BoardVO vo);
	 
	 BoardVO getOneBoard(int number);
	 
	 List<CommentVO> getCommentList(int number);
	
	 void createComment(CommentVO vo);
	 
	 void deleteBoard(int number);
	 
	 void updateBoard(BoardVO vo);
	 
	 void updateComment(CommentVO vo);
	 
	 void deleteComment(int number);
	 
	 void setBoardViewCount(int number);
	 
	 Integer getOneCommentCount(int number);
	 
	int getBoardCount(BoardVO vo);
	
	 
	 
}
