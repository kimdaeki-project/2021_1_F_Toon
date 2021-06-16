package com.to.t1.mypage;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.to.t1.member.MemberVO;
import com.to.t1.util.Pager;

@Mapper
public interface MypageMapper {

	public List<RecentVO> getList(MemberVO memberVO)throws Exception;
	
	public List<RecentVO> getList2(MemberVO memberVO)throws Exception;
	
	public long getTotalCount(MemberVO memberVO) throws Exception;
		
}
