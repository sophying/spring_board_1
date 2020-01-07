package com.board.example.controller;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.board.example.domain.StudyEnrollVO;
import com.board.example.service.StudyEnrollService;

@Controller
@RequestMapping("/study/*")
public class StudyEnrollController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);	
	private static final String UPLOAD_PATH = "C:\\upload_2020";	
	
	@Inject
	StudyEnrollService studyService;
	
	@Inject
	
	
	
		// 1. Normal Study Enroll get
		@RequestMapping(value = "/study_enroll1",method = RequestMethod.GET)
		public void getStuEnroll() throws Exception{
			logger.info("---------------------[ 일반 등록 GET ]------------------------------------------");	
			
			
		}
		 
		// 1.  Normal Study Enroll post
		@RequestMapping(value = "/enroll1", method = RequestMethod.POST)
		public String postStuEnroll(StudyEnrollVO studyEnrollVO) throws Exception{
			logger.info("---------------------[ 일반 등록 POST ]------------------------------------------");	
			
			studyService.enroll(studyEnrollVO);

			return "redirect:/";
		}
		
		// 2. Teacher Study Enroll get
		@RequestMapping(value = "/teacherEnroll" ,method = RequestMethod.GET)
		public void getTeacherEnroll() throws Exception{
			logger.info("---------------------[ 강사 등록 GET ]------------------------------------------");		
			
	
			
		}
		
		// 3. Teacher Study Enroll POST ( 강의 등록 )
		
		@RequestMapping(value="/teacherEnroll.do", method = RequestMethod.POST) 
		public String postTeacherEnroll(StudyEnrollVO studyEnrollVO, HttpServletRequest request, Model model, MultipartFile multipartFile) throws Exception{ 
			logger.info("---------------------[ 강사 등록 POST ]------------------------------------------");			
			
			MultipartHttpServletRequest multi = (MultipartHttpServletRequest) request;
			System.out.println("123123123");
			
			Iterator<String> iterator = multi.getFileNames();
			
			while (iterator.hasNext()) {
				multipartFile = multi.getFile(iterator.next());
				
				if (multipartFile.isEmpty() == false) {
					logger.info("--------------------[ 파일 업로드 시작 ]-----------------------\n");
					logger.info("name : "+multipartFile.getName());
					logger.info("name : "+multipartFile.getOriginalFilename());
					logger.info("name : "+multipartFile.getSize());
					logger.info("--------------------[ 파일 업로드 끝 ]-----------------------\n");
					 
					saveFile(multipartFile);
				}
			}
			studyService.insertBoard(studyEnrollVO, request); 
			
			
			return "redirect:/"; 
			
		}

			private String saveFile(MultipartFile multipartFile) {
		
		// 파일 이름 변경
		UUID uuid = UUID.randomUUID();
		String saveName = uuid+"_"+multipartFile.getOriginalFilename();
		
		logger.info("saveName: {}", saveName);
		
		
		// 저장할 file 객체 생성 
		// 저장할 폴더 경로 ,  파일 이름 
		File saveFile = new File(UPLOAD_PATH,saveName);
		
		try {
			// multipartFile.transferTo(saveFile);
			FileCopyUtils.copy(multipartFile.getBytes(),saveFile); 
			
		} catch (IOException e) {
			
			e.printStackTrace();
			return null;
		}
		
		return saveName;
		
	}

}
