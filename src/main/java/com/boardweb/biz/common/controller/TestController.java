package com.boardweb.biz.common.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@RequestMapping(value="/interceptorTest", method = RequestMethod.GET)
	public ModelAndView interceptorTest() throws Exception{
		ModelAndView mav = new ModelAndView("index");
		log.debug("���ͼ��� �׽�Ʈ�Դϴ�!");
		
		return mav;
	}
}
