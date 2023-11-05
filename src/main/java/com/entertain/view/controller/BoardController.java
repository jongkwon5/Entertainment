package com.entertain.view.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.entertain.biz.board.BoardDTO;
import com.entertain.biz.board.CommentDTO;
import com.entertain.biz.board.impl.BoardServiceImpl;
import com.entertain.biz.board.Criteria;
import com.entertain.biz.board.PageDTO;

@Controller
public class BoardController {

    @Autowired
    private BoardServiceImpl boardService;

    @RequestMapping(value = "/boardList", method = RequestMethod.GET)
    public ModelAndView getBoardList(Model model, Criteria cri, HttpServletRequest request) {
        String searchType = request.getParameter("searchType");
        String searchInput = request.getParameter("searchInput");
        ModelAndView mav = new ModelAndView("/boardList");
        if (searchType == null && searchInput == null) {
            PageDTO pageVO = new PageDTO();
            pageVO.setCri(cri);
            pageVO.setTotalCount(boardService.getBoardCount());
            model.addAttribute("total", boardService.getBoardCount());
            List<Map<String, Object>> list = boardService.getBoardList(cri);
            mav.addObject("boardList", list);
            mav.addObject("pageMaker", pageVO);
        } else {
            cri.setSearch_type(searchType);
            cri.setBoard_text(searchInput);
            int total = boardService.getSearchBoardCount(cri);
            ;
            PageDTO pageVO = new PageDTO();
            pageVO.setCri(cri);
            pageVO.setTotalCount(total);
            model.addAttribute("total", total);
            List<Map<String, Object>> list = boardService.getSearchList(cri);
            mav.addObject("boardList", list);
            mav.addObject("pageMaker", pageVO);
        }
        return mav;
    }

    @RequestMapping(value = "/boardWrite", method = RequestMethod.GET)
    public String getBoardWrite() {
        return "boardWrite";
    }

    @RequestMapping(value = "/getBoardUpdate", method = RequestMethod.GET)
    public String getBoardUpdate(@RequestParam("board_number") int board_number, Model model) {
        model.addAttribute("getOneCommentCount", boardService.getOneCommentCount(board_number));
        model.addAttribute("board", boardService.getOneBoard(board_number));
        model.addAttribute("comment", boardService.getCommentList(board_number));
        return "boardUpdate";
    }

    @RequestMapping(value = "/updateBoard", method = RequestMethod.GET)
    public String updateBoard(BoardDTO dto, RedirectAttributes attributes) {
        boardService.updateBoard(dto);
        attributes.addAttribute("board_number", dto.getBoard_number());
        return "redirect:/getOneBoard";
    }

    @RequestMapping(value = "/createBoard", method = RequestMethod.GET)
    public String createBoard(BoardDTO dto) {
        boardService.createBoard(dto);
        return "redirect:/boardList";
    }

    @RequestMapping(value = "/getOneBoard", method = RequestMethod.GET)
    public String getOneBoard(@RequestParam("board_number") int board_number, Model model) {
        model.addAttribute("getOneCommentCount", boardService.getOneCommentCount(board_number));
        boardService.setBoardViewCount(board_number);
        model.addAttribute("board", boardService.getOneBoard(board_number));
        model.addAttribute("comment", boardService.getCommentList(board_number));
        return "boardRead";
    }

    @RequestMapping(value = "/createComment", method = RequestMethod.GET)
    public String createComment(RedirectAttributes redirect, CommentDTO dto, @RequestParam("board_number") int board_number) {
        boardService.createComment(dto);
        redirect.addAttribute("board_number", board_number);
        return "redirect:/getOneBoard";
    }

    @RequestMapping(value = "/deleteBoard")
    public String deleteBoard(int board_number) {
        boardService.deleteBoard(board_number);
        return "redirect:/boardList";
    }

    @RequestMapping(value = "updateComment")
    @ResponseBody
    public Map<Object, Object> updateComment(@RequestBody CommentDTO dto) {
        boardService.updateComment(dto);
        Map<Object, Object> map = new HashMap<Object, Object>();
        map.put("success", "success");
        return map;
    }

    @RequestMapping(value = "deleteComment")
    public String deleteComment(int comment_number, int board_number, RedirectAttributes attributes) {
        boardService.deleteComment(comment_number);
        attributes.addAttribute("board_number", board_number);
        return "redirect:/getOneBoard";
    }

}
