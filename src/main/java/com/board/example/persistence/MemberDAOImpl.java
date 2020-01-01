package com.board.example.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.example.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Inject
	SqlSession sqlSession;
	
	@Override
	public void register(MemberVO memberVO) throws Exception {
		sqlSession.insert("member.register", memberVO);
	}

}
