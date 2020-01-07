package com.board.example.persistence;


import com.board.example.domain.StudyEnrollVO;

public interface StudyEnrollDAO {

	public void enroll(StudyEnrollVO studyEnrollVO) throws Exception;

	public void tenroll(StudyEnrollVO studyEnrollVO)throws Exception;

}
