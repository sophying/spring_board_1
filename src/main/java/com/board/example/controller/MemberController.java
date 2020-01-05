package com.board.example.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.board.example.domain.MemberVO;
import com.board.example.service.MemberService;
import com.board.example.service.StudyEnrollService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
private static final Logger logger = LoggerFactory.getLogger(MemberController.class);	
	@Inject
	MemberService service;
	
	@Inject
	StudyEnrollService studyService;
	
	//1. 회원가입 get  : register.jsp 로 이동 화면 띄움 
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public void getRegister() throws Exception{
		logger.info("---------------get register");
		
	}
	
	//2. 회원가입 post  : 가입정보를 입력 후 가입버튼을 눌렀을 경우  ( 값을 전달 )
	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String postRegister(MemberVO memberVO) throws Exception{
		logger.info("---------------post register");
		
		service.register(memberVO); 
		
		return "redirect:/";
	}
	
	
}
