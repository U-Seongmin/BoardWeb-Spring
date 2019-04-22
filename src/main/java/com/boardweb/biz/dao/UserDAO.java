package com.boardweb.biz.dao;

import org.springframework.stereotype.Repository;

import com.boardweb.biz.common.dao.AbstractDAO;
import com.boardweb.biz.vo.UserVO;

@Repository("userDAO")
public class UserDAO extends AbstractDAO {

	public UserVO selectById(String id) {
		return (UserVO) selectOne("user.selectById", id);
	}
	
	public UserVO selectByName(String name) {
		return (UserVO) selectOne("user.selectByName", name);
	}

	public void insertUser(UserVO regReq) {
		insert("user.register", regReq);
	}
}
