package com.to.t1.member;

import org.apache.ibatis.annotations.Mapper;

import com.to.t1.member.MemberVO;

@Mapper
public interface MemberMapper {

	public MemberVO getLogin(MemberVO memberVO);
	
}
