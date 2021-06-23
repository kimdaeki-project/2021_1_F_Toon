package com.to.t1.toon.eachep;

import java.util.HashMap;

import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import com.to.t1.member.MemberService;
import com.to.t1.member.MemberVO;
import com.to.t1.mypage.RecentVO;
import com.to.t1.review.ReviewVO;
import com.to.t1.toon.ToonVO;
import com.to.t1.util.Pager;

@Service
public class EachEpService {
	@Autowired
	private EachEpMapper eachEpMapper;
	@Autowired
	private MemberService memberService;
	
	public ToonVO getList(Pager pager)throws Exception{
//		pager.setCurPage(pager.getCurPage()==0?1:pager.getCurPage());
//		pager.setCurBlock(pager.getCurBlock()==0?1:pager.getCurBlock());
//		pager.makecal(eachEpMapper.getTotalCount(pager));
		
		pager.makeRow();
		
//		System.out.println(pager.getToonNum());
//		System.out.println(pager.getStartRow());
//		System.out.println(pager.getPerPage());
		/*
		 * HashMap<String, Object> obj = new HashMap<String, Object>();
		 * obj.put("memberVO", memberVO); obj.put("pager", pager);
		 */
		
		Long totalCount = eachEpMapper.getTotalCount(pager);
		pager.makeNum(totalCount);
		return eachEpMapper.getList(pager);	
	}
	
	public ToonVO getSelect(EachEpVO eachEpVO, RecentVO recentVO)throws Exception{
		int r=eachEpMapper.setHitUpdate(eachEpVO);
		System.out.println("toonNum: "+eachEpVO.getToonNum());
		System.out.println("eachEpNum: "+eachEpVO.getEachEpNum());
		System.out.println("epHit : "+r);
			recentVO.setToonNum(eachEpVO.getToonNum());
			recentVO.setEpNum(eachEpVO.getEpNum());
		  
		  
		  if(recentVO.getUsername()!=null) {
		  eachEpMapper.setRecentToon(recentVO); 
		  }
		 
		ToonVO toonVO=eachEpMapper.getSelect(eachEpVO);
		
		/* System.out.println(user); */
		System.out.println(eachEpVO.getEpHit());
		
		return toonVO;
	}
	
	public long updateScore(ReviewVO reviewVO)throws Exception{
		return eachEpMapper.updateScore(reviewVO);
	}
	
	public long deleteScore(ReviewVO reviewVO)throws Exception{
		return eachEpMapper.updateScore(reviewVO);
	}
}
