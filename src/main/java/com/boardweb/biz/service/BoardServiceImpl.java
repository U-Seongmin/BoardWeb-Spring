package com.boardweb.biz.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.boardweb.biz.common.common.CommandMap;
import com.boardweb.biz.dao.BoardDAO;
import com.boardweb.biz.vo.BoardVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService {

	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "boardDAO")
	private BoardDAO boardDAO;

	@Override
	public List<Map<String, Object>> selectBoardList(CommandMap commandMap) {
		return boardDAO.selectBoardList(commandMap);
	}

	@Override
	public void insertBoard(BoardVO boardVO) {
		boardDAO.insertBoard(boardVO);
	}

}
