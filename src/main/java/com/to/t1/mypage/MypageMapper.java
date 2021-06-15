package com.to.t1.mypage;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.to.t1.member.MemberVO;
import com.to.t1.util.Pager;

@Mapper
public interface MypageMapper {

	public List<RecentVO> getList(Pager pager)throws Exception;
	
	public long getTotalCount(Pager pager) throws Exception;

}
