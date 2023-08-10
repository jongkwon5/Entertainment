package com.entertain.view.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.entertain.biz.board.BoardVO;
import com.entertain.biz.board.CommentVO;
import com.entertain.biz.board.impl.BoardServiceImpl;

@Controller
public class BoardController {

	@Autowired
	private BoardServiceImpl boardService;

	@RequestMapping(value = "/Entertain_board_list.do", method = RequestMethod.GET)
	public String getBoardList(Model model, BoardVO vo) {
		model.addAttribute("boardList", boardService.getBoardList(vo));

		return "Entertain_board_list.jsp";
	}

	@RequestMapping(value = "/getBoardSearch.do", method = RequestMethod.GET)
	public String getSearchList(Model model, BoardVO vo, @RequestParam("searchType") String searchType,
			@RequestParam("searchInput") String searchInput) {
		System.out.println("전");

		vo.setSearch_type(searchType);
		vo.setBoard_text(searchInput);

		model.addAttribute("boardList", boardService.getSearchList(vo));
		System.out.println("후");
		return "Entertain_board_list.jsp";
	}

	@RequestMapping(value = "/boardWrite.do", method = RequestMethod.GET)
	public String getSearchList() {

		return "Entertain_board_write.jsp";
	}

	@RequestMapping(value = "/createBoard.do", method = RequestMethod.GET)
	public String createBoard(BoardVO vo) {
		boardService.createBoard(vo);
		return "Entertain_board_list.do";
	}

	@RequestMapping(value = "/getOneBoard.do", method = RequestMethod.GET)
	public String getOneBoard(@RequestParam("board_number") int board_number, Model model) {
		model.addAttribute("board", boardService.getOneBoard(board_number));
		model.addAttribute("comment", boardService.getCommentList(board_number));
		return "Entertain_board_read.jsp";
	}

 @RequestMapping(value="/createComment.do", method=RequestMethod.GET)
 	public String createComment(CommentVO vo, Model model) { 
	 System.out.println("전");
	 boardService.createComment(vo); 
	 System.out.println("후");
	  

	  return "getOneBoard.do"; 
	  }
	 

}
