package com.board.example.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.board.example.domain.StudyEnrollVO;

public interface StudyEnrollService {
	
	// 1. 일반 스터디 등록 
	public void enroll(StudyEnrollVO studyEnrollVO) throws Exception;
	
	// 2. 강사등록 이력서 파일 전송
	public void insertBoard(StudyEnrollVO studyEnrollVO, HttpServletRequest request) throws Exception;


}
