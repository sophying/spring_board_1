package com.board.example.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.board.example.domain.StudyEnrollVO;
import com.board.example.persistence.StudyEnrollDAO;

@Service
public class StudyEnrollServiceImpl implements StudyEnrollService{

	@Inject
	StudyEnrollDAO studyEnrollDAO;
	
	@Override
	public void enroll(StudyEnrollVO studyEnrollVO) throws Exception {
		studyEnrollDAO.enroll(studyEnrollVO);
	}

}
