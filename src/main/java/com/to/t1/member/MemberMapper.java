package com.to.t1.member;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.to.t1.member.MemberVO;

@Mapper
public interface MemberMapper {

	public int setJoin(MemberVO memberVO)throws Exception;
	
	public int setJoinFile(JoinFileVO joinFileVO)throws Exception; //사진
	
	public JoinFileVO getJoinFile(MemberVO memberVO)throws Exception;
	
	public MemberVO getLogin(MemberVO memberVO);
	
	public int memberUpdate(MemberVO memberVO)throws Exception;
	
	public int memberDelete(String username)throws Exception;
	
	public MemberVO searchId(MemberVO memberVO)throws Exception;
	
	public MemberVO searchPw(MemberVO memberVO)throws Exception;
	
	public int pwUpdate(MemberVO memberVO)throws Exception;
	
	public MemberVO getUsername(MemberVO memberVO)throws Exception;
	
	public int setMemberRole(Map<String, String> map)throws Exception;
	
	public JoinFileVO myPage(MemberVO memberVO)throws Exception;
}
