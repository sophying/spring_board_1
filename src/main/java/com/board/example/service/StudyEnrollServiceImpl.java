package com.board.example.service;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.board.example.controller.MemberController;
import com.board.example.domain.StudyEnrollVO;
import com.board.example.persistence.StudyEnrollDAO;

@Service
public class StudyEnrollServiceImpl implements StudyEnrollService{

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);	
	private static final String UPLOAD_PATH = "C:\\upload_2020";	
	
	@Inject
	StudyEnrollDAO studyEnrollDAO;
	
	// 1. 일반 등록
	@Override
	public void enroll(StudyEnrollVO studyEnrollVO) throws Exception { 
		studyEnrollDAO.enroll(studyEnrollVO);
	}

	// 2. 강사 등록 
	@Override
	public void insertBoard(StudyEnrollVO studyEnrollVO, HttpServletRequest request) throws Exception {
		
		studyEnrollDAO.tenroll(studyEnrollVO); 
		
		
	/*	
		MultipartHttpServletRequest multi = (MultipartHttpServletRequest) request;
		
		Iterator<String> iterator = multi.getFileNames();
		
		MultipartFile multipartFile = null;
		
		while (iterator.hasNext()) {
			multipartFile = multi.getFile(iterator.next());
			
			if (multipartFile.isEmpty() == false) {
				logger.debug("--------------------[ 파일 업로드 시작 ]-----------------------\n");
				logger.debug("name : "+multipartFile.getName());
				logger.debug("name : "+multipartFile.getOriginalFilename());
				logger.debug("name : "+multipartFile.getSize());
				logger.debug("--------------------[ 파일 업로드 끝 ]-----------------------\n");
				
				saveFile(multipartFile);
			}
		}	
	*/	
	}

	/*
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
	*/
}
