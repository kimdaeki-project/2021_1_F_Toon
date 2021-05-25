package com.to.t1.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.to.t1.member.MemberMapper;

@Service
public class MemberService {
	@Autowired
	private MemberMapper memberMapper;
	
	public MemberVO getLogin(MemberVO memberVO)throws Exception{
	return memberMapper.getLogin(memberVO);
	}
	
	
}
