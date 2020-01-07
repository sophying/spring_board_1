package com.board.example.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.example.domain.StudyEnrollVO;

@Repository
public class StudyEnrollDAOImpl implements StudyEnrollDAO{

	@Inject
	SqlSession sqlSessoin;
	
	@Override
	public void enroll(StudyEnrollVO studyEnrollVO) throws Exception {
		
		sqlSessoin.insert("study.enroll",studyEnrollVO);
		
	}

	
	@Override
	public void tenroll(StudyEnrollVO studyEnrollVO)throws Exception {
		
		sqlSessoin.insert("study.tenroll", studyEnrollVO);
	}

	
}
