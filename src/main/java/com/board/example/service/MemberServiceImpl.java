package com.board.example.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.board.example.domain.MemberVO;
import com.board.example.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService{

	@Inject
	MemberDAO memberDAO;
	
	@Override
	public void register(MemberVO memberVO) throws Exception {
		memberDAO.register(memberVO);
	}

}
