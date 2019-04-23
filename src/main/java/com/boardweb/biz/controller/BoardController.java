package com.boardweb.biz.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.boardweb.biz.common.common.CommandMap;
import com.boardweb.biz.service.BoardService;
import com.boardweb.biz.util.AuthInfo;
import com.boardweb.biz.vo.BoardVO;

@Controller
public class BoardController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "boardService")
	private BoardService boardService;

	@RequestMapping(value = "/board/boardList", method = RequestMethod.GET)
	public ModelAndView getBoardList(CommandMap commandMap) throws Exception {

		ModelAndView mav = new ModelAndView("/board/boardList");

		List<Map<String, Object>> list = boardService.selectBoardList(commandMap);
		mav.addObject("list", list);

		return mav;
	}

	@RequestMapping(value = "/board/boardWrite", method = RequestMethod.GET)
	public ModelAndView writeBoard() throws Exception {
		ModelAndView mav = new ModelAndView("/board/boardWrite");
		mav.addObject("boardVO", new BoardVO());
		return mav;
	}
	
	@RequestMapping(value = "/board/insertBoard", method = RequestMethod.POST)
	public ModelAndView insertBoard(@Valid BoardVO boardVO, BindingResult bindingResult, HttpSession session) throws Exception{
		if (bindingResult.hasErrors()) {
			ModelAndView mav = new ModelAndView("/board/boardWrite");
			return mav;
		}
		ModelAndView mav = new ModelAndView("redirect:/board/boardList");
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		System.out.println(authInfo.getName());
		boardService.insertBoard(boardVO);
		return mav;
	}
}
