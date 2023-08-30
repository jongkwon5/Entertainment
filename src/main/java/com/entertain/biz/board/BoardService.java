package com.entertain.biz.board;

import java.util.List;
import java.util.Map;

public interface BoardService {

	List<Map<String, Object>> getBoardList(CriteriaDTO cri);

	List<Map<String, Object>> getSearchList(CriteriaDTO cri);
	 
	 void createBoard(BoardDTO vo);
	 
	 BoardDTO getOneBoard(int number);
	 
	 List<CommentDTO> getCommentList(int number);
	
	 void createComment(CommentDTO vo);
	 
	 void deleteBoard(int number);
	 
	 void updateBoard(BoardDTO vo);
	 
	 void updateComment(CommentDTO vo);
	 
	 void deleteComment(int number);
	 
	 void setBoardViewCount(int number);
	 
	 Integer getOneCommentCount(int number);
	 
	int getBoardCount();
	
	int getSearchBoardCount(CriteriaDTO cri);
	 
	 
}
