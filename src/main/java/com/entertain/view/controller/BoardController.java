package com.entertain.view.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.entertain.biz.board.BoardVO;
import com.entertain.biz.board.impl.BoardServiceImpl;


@Controller
public class BoardController {
	
	@Autowired
	private BoardServiceImpl boardService;

	@RequestMapping(value="/Entertain_board_list.do", method=RequestMethod.GET)
	public String getBoardList(Model model, BoardVO vo) {
		model.addAttribute("boardList",boardService.getBoardList(vo));

		return "Entertain_board_list.jsp";
	}
	
	@RequestMapping(value="/getBoardSearch.do", method=RequestMethod.GET)
	public String getSearchList(Model model, BoardVO vo,
								@RequestParam("searchType") String searchType,
								@RequestParam("searchInput") String searchInput
								) {
		System.out.println("전");
		
		vo.setSearch_type(searchType);
		vo.setBoard_text(searchInput);
		
		model.addAttribute("boardList",boardService.getSearchList(vo));
		System.out.println("후");
		return "Entertain_board_list.jsp";
	}
	
	@RequestMapping(value="/boardWrite.do", method=RequestMethod.GET)
	public String getSearchList() {
	
		return "Entertain_board_write.jsp";
	}
	
	
}


