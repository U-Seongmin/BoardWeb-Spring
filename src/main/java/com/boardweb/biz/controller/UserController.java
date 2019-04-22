package com.boardweb.biz.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.boardweb.biz.exception.AlreadyExistingIdException;
import com.boardweb.biz.exception.AlreadyExistingNameException;
import com.boardweb.biz.service.UserService;
import com.boardweb.biz.vo.UserVO;

@Controller
public class UserController {
	Logger log = Logger.getLogger(this.getClass());
	@Resource(name = "userService")
	private UserService userService;

//	@RequestMapping(value = "/register/step1", method = RequestMethod.GET)
//	public ModelAndView step1() throws Exception {
//		ModelAndView mav = new ModelAndView("/step1");
//		log.debug("ȸ������ 1�ܰ�");
//
//		return mav;
//	}

	@RequestMapping(value = "/register/step2", method = RequestMethod.GET)
	public ModelAndView step2(/* @RequestParam(value = "agree", defaultValue = "false") Boolean agree */) throws Exception {
//		if (!agree) {
//			ModelAndView mav = new ModelAndView("/step1");
//			return mav;
//		}
		ModelAndView mav = new ModelAndView("/step2");
		log.debug("ȸ������");
		mav.addObject("userVO", new UserVO());
		return mav;
	}

	@RequestMapping(value = "/register/step3", method = RequestMethod.POST)
	public ModelAndView step3(@Valid UserVO regReq, BindingResult bindingResult) throws Exception {

		// @Valid ����
		if (bindingResult.hasErrors()) {
			ModelAndView mav = new ModelAndView("/step2");
			return mav;
		}

		// ��й�ȣ Ȯ��
		boolean check = regReq.isPwEqualToCheckPw();
		if (!check) {
			bindingResult.rejectValue("checkPw", "noMatch", "��й�ȣ�� Ȯ�����ּ���.");
			ModelAndView mav = new ModelAndView("/step2");
			return mav;
		}

		try {
			userService.register(regReq);
		} catch (AlreadyExistingIdException e) {
			bindingResult.rejectValue("id", "duplicate", "�̹� ���Ե� ���̵��Դϴ�.");
			ModelAndView mav = new ModelAndView("/step2");
			return mav;
		} catch (AlreadyExistingNameException e) {
			bindingResult.rejectValue("name", "duplicate", "�̹� ���Ե� �г����Դϴ�.");
			ModelAndView mav = new ModelAndView("/step2");
			return mav;
		}

		ModelAndView mav = new ModelAndView("/step3");
		return mav;
	}
}
