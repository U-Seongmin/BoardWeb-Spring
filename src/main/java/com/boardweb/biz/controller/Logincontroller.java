package com.boardweb.biz.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.boardweb.biz.exception.IdPasswordNotMatchingException;
import com.boardweb.biz.service.UserService;
import com.boardweb.biz.util.AuthInfo;
import com.boardweb.biz.util.LoginCommand;

@Controller
public class Logincontroller {
	@Resource(name="userService")
	private UserService userService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginForm(LoginCommand loginCommand) throws Exception {
		ModelAndView mav = new ModelAndView("/login/login");
		return mav;
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView loginSuccess(@Valid LoginCommand loginCommand, BindingResult bindingResult,
									HttpSession session, HttpServletResponse response) throws Exception {
		if(bindingResult.hasErrors()) {
			ModelAndView mav = new ModelAndView("/login/login");
			return mav;
		}
		
		try {
			AuthInfo authInfo = userService.loginAuth(loginCommand);
			session.setAttribute("authInfo", authInfo);
		}catch (IdPasswordNotMatchingException e) {
			bindingResult.rejectValue("password", "notMatch", "아이디 혹은 비밀번호가 틀렸습니다.");
			ModelAndView mav = new ModelAndView("/login/login");
			return mav;
		}
		
		ModelAndView mav = new ModelAndView("redirect:/board/boardList");
		return mav;
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		ModelAndView mav = new ModelAndView("redirect:/");
		return mav;
	}
}