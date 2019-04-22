package com.boardweb.biz.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.boardweb.biz.common.common.CommandMap;
import com.boardweb.biz.common.dao.AbstractDAO;
import com.boardweb.biz.vo.BoardVO;

@Repository("boardDAO")
public class BoardDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBoardList(CommandMap commandMap) {
		return (List<Map<String, Object>>) selectList("board.selectBoardList", commandMap);
	}

	public void insertBoard(BoardVO boardVO) {
		insert("board.insertBoard", boardVO);
	}

}
