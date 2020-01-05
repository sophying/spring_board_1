package com.board.example.domain;

import java.util.Date;

public class StudyEnrollVO {
/*
	SNO					   NOT NULL NUMBER
	 USERID 				   NOT NULL VARCHAR2(20)
	 USERPASS				   NOT NULL VARCHAR2(100)
	 EMAIL						    VARCHAR2(30)
	 CATEGORY				   NOT NULL VARCHAR2(15)
	 STITLE 				   NOT NULL VARCHAR2(50)
	 STARTDATE					    DATE
	 ENDDATE					    DATE
	 SDAY					   NOT NULL VARCHAR2(25)
	 SPLACE 					    VARCHAR2(60)
	 SCONTENT				   NOT NULL VARCHAR2(1000)
*/
	
	private int post;
	private String roadAddress;
	private String jibunAddress;
	
	
	private int sno;
	private String userId;
	private String userPass;
	private String email;
	private String category;
	private String stitle;
	private Date startDate;
	private Date endDate;
	private String sDay;
	private String sPlace;
	private String sContent;
		
	
	public int getSno() {
		return sno;
	}
	public void setSno(int sno) {
		this.sno = sno;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getStitle() {
		return stitle;
	}
	public void setStitle(String stitle) {
		this.stitle = stitle;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getsDay() {
		return sDay;
	}
	public void setsDay(String sDay) {
		this.sDay = sDay;
	}
	public String getsPlace() {
		return sPlace;
	}
	public void setsPlace(String sPlace) {
		this.sPlace = sPlace;
	}
	public String getsContent() {
		return sContent;
	}
	public void setsContent(String sContent) {
		this.sContent = sContent;
	}
	
	
/* 우편번호  */	
	public int getPost() {
		return post;
	}
	public void setPost(int post) {
		this.post = post;
	}
	public String getRoadAddress() {
		return roadAddress;
	}
	public void setRoadAddress(String roadAddress) {
		this.roadAddress = roadAddress;
	}
	public String getJibunAddress() {
		return jibunAddress;
	}
	public void setJibunAddress(String jibunAddress) {
		this.jibunAddress = jibunAddress;
	}
	
	
}
