package com.boardweb.biz.service;

import java.util.List;
import java.util.Map;

import com.boardweb.biz.common.common.CommandMap;
import com.boardweb.biz.vo.BoardVO;

public interface BoardService {

	List<Map<String, Object>> selectBoardList(CommandMap commandMap);

	void insertBoard(BoardVO boardVO);
	
	BoardVO detailBoard(int serial);
	
	void updateBoard(BoardVO boardVO);
	
	void deleteBoard(int serial);
}
