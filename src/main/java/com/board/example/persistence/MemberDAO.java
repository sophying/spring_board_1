package com.board.example.persistence;

import com.board.example.domain.MemberVO;

public interface MemberDAO {

	public void register(MemberVO memberVO) throws Exception;

}
