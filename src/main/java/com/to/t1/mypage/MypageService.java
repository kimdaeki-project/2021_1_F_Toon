package com.to.t1.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.to.t1.board.BoardVO;
import com.to.t1.member.MemberMapper;
import com.to.t1.member.MemberVO;
import com.to.t1.toon.ToonVO;
import com.to.t1.util.Pager;

@Service
public class MypageService {
	
	@Autowired
	private MypageMapper mypageMapper;

	public List<RecentVO> getList(MemberVO memberVO) throws Exception {
		
//		pager.makeRow();
//		long totalCount = mypageMapper.getTotalCount(memberVO);
//		pager.makeNum(totalCount);
	
		return mypageMapper.getList(memberVO);
	}
	

	public List<RecentVO> getList2(MemberVO memberVO) throws Exception {
		Pager pager = new Pager();
		
//		pager.makeRow();
//		long totalCount = mypageMapper.getTotalCount(memberVO, pager);
//		pager.makeNum(totalCount);
	
		return mypageMapper.getList2(memberVO, pager);
	}
	
	
	
}
