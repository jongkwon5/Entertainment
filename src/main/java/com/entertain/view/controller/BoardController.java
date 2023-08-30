package com.entertain.view.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.entertain.biz.board.BoardDTO;
import com.entertain.biz.board.CommentDTO;
import com.entertain.biz.board.impl.BoardServiceImpl;
import com.entertain.biz.board.CriteriaDTO;
import com.entertain.biz.board.PageDTO;

@Controller
public class BoardController {

	@Autowired
	private BoardServiceImpl boardService;

	@RequestMapping(value = "/Entertain_board_list", method = RequestMethod.GET)
	public ModelAndView getBoardList(BoardDTO dto, Model model, CriteriaDTO cri, 
			/* @RequestParam("board_number") int board_number, */
			
			HttpServletRequest request) {
		String searchType = request.getParameter("searchType");
			String searchInput =request.getParameter("searchInput");
		
		ModelAndView mav = new ModelAndView("/Entertain_board_list");
		if(searchType == null && searchInput == null) {
			 PageDTO pageVO = new PageDTO();
			 pageVO.setCri(cri);
			 pageVO.setTotalCount(boardService.getBoardCount());
			 model.addAttribute("total",boardService.getBoardCount());
			 List<Map<String,Object>> list = boardService.getBoardList(cri);
			mav.addObject("boardList", list);
			mav.addObject("pageMaker", pageVO);
		}else {
			
				cri.setSearch_type(searchType);
				cri.setBoard_text(searchInput);
				int total = boardService.getSearchBoardCount(cri);
				System.out.println("값"+total);
				 PageDTO pageVO = new PageDTO();
				 pageVO.setCri(cri);
				 pageVO.setTotalCount(total);
				 model.addAttribute("total",total);
				 List<Map<String,Object>> list = boardService.getSearchList(cri);
				 System.out.println("안녕하세요ㅁㅁㅁㅁ");
				 mav.addObject("boardList", list);
				 mav.addObject("pageMaker", pageVO);
				System.out.println("후");
		}
		
		return mav;
	}

	/*
	 * @eRequestMapping(value = "/getBoardSearch.do", method = RequestMethod.GET)
	 * public ModelAndView getSearchList(Model model, BoardVO
	 * vo, @RequestParam("searchType") String searchType,
	 * 
	 * @RequstParam("searchInput") String searchInput, Criteria cri) { ModelAndView
	 * mav = new ModelAndView("/Entertain_board_list.jsp");
	 * cri.setSearch_type(searchType); cri.setBoard_text(searchInput);
	 * 
	 * int total = boardService.getSearchBoardCount(cri);
	 * System.out.println("값"+boardService.getSearchBoardCount(cri)); PageVO pageVO
	 * = new PageVO(); pageVO.setCri(cri); pageVO.setTotalCount(total);
	 * model.addAttribute("total",total);
	 * 
	 * List<Map<String,Object>> list = boardService.getSearchList(cri);
	 * System.out.println("안녕하세요ㅁㅁㅁㅁ"); mav.addObject("boardList", list);
	 * mav.addObject("pageMaker", pageVO);
	 * 
	 * System.out.println("후"); return mav; }
	 */

	@RequestMapping(value = "/boardWrite", method = RequestMethod.GET)
	public String getboardWrite() {
		return "Entertain_board_write";
	}
	
	@RequestMapping(value = "/getBoardUpdate", method = RequestMethod.GET)
	public String getBoardUpdate(@RequestParam("board_number") int board_number, Model model) {
		model.addAttribute("getOneCommentCount", boardService.getOneCommentCount(board_number));
		model.addAttribute("board", boardService.getOneBoard(board_number));
		model.addAttribute("comment", boardService.getCommentList(board_number));
		return "Entertain_board_update";
	}
	
	@RequestMapping(value = "/updateBoard", method = RequestMethod.GET)
	public String updateBoard(BoardDTO dto) {
		boardService.updateBoard(dto);
		return "getOneBoard";
	}
	

	@RequestMapping(value = "/createBoard", method = RequestMethod.GET)
	public String createBoard(BoardDTO dto) {
		boardService.createBoard(dto);
		return "redirect:/Entertain_board_list";
//		return "Entertain_board_list.do";
	}

	@RequestMapping(value = "/getOneBoard", method = RequestMethod.GET)
	public String getOneBoard(@RequestParam("board_number") int board_number, Model model) {
	
		System.out.println("아오");
		System.out.println(boardService.getOneCommentCount(board_number));
		model.addAttribute("getOneCommentCount",boardService.getOneCommentCount(board_number));
		
		boardService.setBoardViewCount(board_number);
		model.addAttribute("board", boardService.getOneBoard(board_number));
		model.addAttribute("comment", boardService.getCommentList(board_number));
		return "Entertain_board_read";
	}

 @RequestMapping(value="/createComment", method=RequestMethod.GET)
 	public String createComment(RedirectAttributes redirect, CommentDTO dto, @RequestParam("board_number") int board_number) { 
	 System.out.println("asdasd");
	 boardService.createComment(dto); 
	 System.out.println("후");
	  
	 redirect.addAttribute("board_number", board_number);
	  return "redirect:/getOneBoard"; 
	  }
 
 @RequestMapping(value="/deleteBoard")
	public String deleteBoard(int board_number) { 
	 boardService.deleteBoard(board_number);
	  return "Entertain_board_list"; 
	  }
 	
 	@RequestMapping(value = "updateComment")
	@ResponseBody
	public Map<Object, Object> updateComment(@RequestBody CommentDTO dto){
 		
 		System.out.println("씨바라라라라라");
 	
		boardService.updateComment(dto);
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("success", "success");
        return map;
        
	
	}
 	
 	@RequestMapping(value = "deleteComment")
	public String deleteComment(int comment_number){
		boardService.deleteComment(comment_number);

        return "getOneBoard";
        
	
	}
 

 
	 

}
