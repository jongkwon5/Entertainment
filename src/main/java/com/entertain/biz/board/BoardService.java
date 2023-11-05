package com.entertain.biz.board;

import java.util.List;
import java.util.Map;

public interface BoardService {
    List<Map<String, Object>> getBoardList(Criteria cri);

    List<Map<String, Object>> getSearchList(Criteria cri);

    void createBoard(BoardDTO dto);

    BoardDTO getOneBoard(int number);

    List<CommentDTO> getCommentList(int number);

    void createComment(CommentDTO dto);

    void deleteBoard(int number);

    void updateBoard(BoardDTO dto);

    void updateComment(CommentDTO dto);

    void deleteComment(int number);

    void setBoardViewCount(int number);

    Integer getOneCommentCount(int number);

    int getBoardCount();

    int getSearchBoardCount(Criteria cri);
}
