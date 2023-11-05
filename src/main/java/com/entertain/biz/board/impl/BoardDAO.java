package com.entertain.biz.board.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.entertain.biz.board.BoardDTO;
import com.entertain.biz.board.CommentDTO;
import com.entertain.biz.board.Criteria;

@Repository
public class BoardDAO {

    @Autowired
    SqlSessionTemplate mybatis;

    public List<Map<String, Object>> getBoardList(Criteria cri) {
        return mybatis.selectList("BoardDAO.getBoardList", cri);
    }

    public List<Map<String, Object>> getSearchList(Criteria cri) {
        return mybatis.selectList("BoardDAO.getSearchList", cri);
    }

    public void createBoard(BoardDTO dto) {
        mybatis.insert("BoardDAO.createBoard", dto);
    }

    public BoardDTO getOneBoard(int number) {
        return mybatis.selectOne("BoardDAO.getOneBoard", number);
    }

    public List<CommentDTO> getCommentList(int number) {
        return mybatis.selectList("BoardDAO.getCommentList", number);
    }

    public void createComment(CommentDTO dto) {
        mybatis.insert("BoardDAO.createComment", dto);
    }

    public void deleteBoard(int number) {
        mybatis.delete("BoardDAO.deleteBoard", number);
    }

    public void updateBoard(BoardDTO dto) {
        mybatis.update("BoardDAO.updateBoard", dto);
    }

    public void updateComment(CommentDTO dto) {
        mybatis.update("BoardDAO.updateComment", dto);
    }

    public void deleteComment(int number) {
        mybatis.delete("BoardDAO.deleteComment", number);
    }

    public void setBoardViewCount(int number) {
        mybatis.update("BoardDAO.setBoardViewCount", number);
    }

    public Integer getOneCommentCount(int number) {
        return mybatis.selectOne("BoardDAO.getOneCommentCount", number);
    }

    public int getBoardCount() {
        return mybatis.selectOne("BoardDAO.getBoardCount");
    }

    public int getSearchBoardCount(Criteria cri) {
        return mybatis.selectOne("BoardDAO.getSearchBoardCount", cri);
    }
}
