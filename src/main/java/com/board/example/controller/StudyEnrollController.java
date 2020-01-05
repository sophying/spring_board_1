package com.board.example.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.board.example.domain.StudyEnrollVO;
import com.board.example.service.StudyEnrollService;

@Controller
@RequestMapping("/study/*")
public class StudyEnrollController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);	
	
	@Inject
	StudyEnrollService studyService;
	
	
		// 1. Study Enroll get
		@RequestMapping(value = "/study_enroll1",method = RequestMethod.GET)
		public void getEnroll() throws Exception{
			logger.info("---------------get Enroll");
			
			
		}
		
		// 1.  Study Enroll post
		@RequestMapping(value = "/study_enroll1", method = RequestMethod.POST)
		public String postEnroll(StudyEnrollVO studyEnrollVO) throws Exception{
			logger.info("---------------post Enroll");
			
			System.out.println(studyEnrollVO.getPost()+"/"+studyEnrollVO.getRoadAddress()+"/"+studyEnrollVO.getJibunAddress());
			
			String addr ="["+ studyEnrollVO.getPost()+"]"+studyEnrollVO.getRoadAddress()+"("+studyEnrollVO.getJibunAddress()+")";
			
			studyEnrollVO.setsPlace(addr);
			
			
			studyService.enroll(studyEnrollVO);

			return "redirect:/";
		}
		
		// 2. modify StudyEnroll info
		@RequestMapping(value = "/modify" ,method = RequestMethod.GET)
		public void getModify() throws Exception{
			logger.info("---------------get modify");		
			
		}


}
