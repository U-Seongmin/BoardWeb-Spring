package com.boardweb.biz.service;

import com.boardweb.biz.util.AuthInfo;
import com.boardweb.biz.util.LoginCommand;
import com.boardweb.biz.vo.UserVO;

public interface UserService {
	void register(UserVO regReq) throws Exception;
	AuthInfo loginAuth(LoginCommand loginCommand) throws Exception;
}
