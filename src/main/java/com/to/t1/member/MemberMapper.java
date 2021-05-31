package com.to.t1.member;

import org.apache.ibatis.annotations.Mapper;

import com.to.t1.member.MemberVO;

@Mapper
public interface MemberMapper {

	public int setJoin(MemberVO memberVO)throws Exception;
	
	public int setJoinFile(JoinFileVO joinFileVO)throws Exception;
	
	public JoinFileVO getJoinFile(MemberVO memberVO)throws Exception;
	
	public MemberVO getLogin(MemberVO memberVO)throws Exception;
	
	public int memberUpdate(MemberVO memberVO)throws Exception;
	
	public int memberDelete(MemberVO memberVO)throws Exception;
	
	public MemberVO searchId(MemberVO memberVO)throws Exception;
	
	public MemberVO searchPw(MemberVO memberVO)throws Exception;
	
}
