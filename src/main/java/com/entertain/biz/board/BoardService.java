package com.entertain.biz.board;

import java.util.List;
import java.util.Map;

public interface BoardService {

	List<Map<String, Object>> getBoardList(Criteria cri);

	List<Map<String, Object>> getSearchList(Criteria cri);
	 
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
	 
	int getBoardCount();
	
	int getSearchBoardCount(Criteria cri);
	 
	 
}
