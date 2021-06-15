package com.to.t1.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.to.t1.member.MemberMapper;
import com.to.t1.toon.ToonVO;
import com.to.t1.util.Pager;

@Service
public class MypageService {
	
	@Autowired
	private MypageMapper mypageMapper;

	public List<RecentVO> getList(Pager pager) throws Exception {
	
		pager.makeRow();
		long totalCount = mypageMapper.getTotalCount(pager);
		System.out.println("서비스");
		pager.makeNum(totalCount);
		System.out.println("서비스2");
		return mypageMapper.getList(pager);
			
	}
	
	
}
