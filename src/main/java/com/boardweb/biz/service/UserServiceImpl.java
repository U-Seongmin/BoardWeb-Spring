package com.boardweb.biz.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.boardweb.biz.dao.UserDAO;
import com.boardweb.biz.exception.AlreadyExistingIdException;
import com.boardweb.biz.exception.AlreadyExistingNameException;
import com.boardweb.biz.exception.IdPasswordNotMatchingException;
import com.boardweb.biz.util.AuthInfo;
import com.boardweb.biz.util.LoginCommand;
import com.boardweb.biz.vo.UserVO;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Resource(name = "userDAO")
	private UserDAO userDAO;

	@Override
	public void register(UserVO regReq) throws Exception {
		UserVO id = userDAO.selectById(regReq.getId());
		if (id != null) {
			throw new AlreadyExistingIdException(regReq.getId() + " is duplicate id.");
		}
		UserVO name = userDAO.selectByName(regReq.getName());
		if (name != null) {
			throw new AlreadyExistingNameException(regReq.getName() + " is duplicate Name.");
		}
		userDAO.insertUser(regReq);
	}

	@Override
	public AuthInfo loginAuth(LoginCommand loginCommand) throws Exception {
		UserVO user = userDAO.selectById(loginCommand.getId());
		if(user == null) {
			throw new IdPasswordNotMatchingException();
		}
		if(!user.matchPassword(loginCommand.getPassword())){
			throw new IdPasswordNotMatchingException();
		}
		return new AuthInfo(user.getId(), user.getName(), user.getSerial());
	}
}
