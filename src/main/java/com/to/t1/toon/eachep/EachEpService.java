package com.to.t1.toon.eachep;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.to.t1.review.ReviewVO;
import com.to.t1.toon.ToonVO;
import com.to.t1.util.Pager;

@Service
public class EachEpService {
	@Autowired
	private EachEpMapper eachEpMapper;
	
	public ToonVO getList(Pager pager)throws Exception{
//		pager.setCurPage(pager.getCurPage()==0?1:pager.getCurPage());
//		pager.setCurBlock(pager.getCurBlock()==0?1:pager.getCurBlock());
//		pager.makecal(eachEpMapper.getTotalCount(pager));
		
		pager.makeRow();
		
//		System.out.println(pager.getToonNum());
//		System.out.println(pager.getStartRow());
//		System.out.println(pager.getPerPage());
		
		Long totalCount = eachEpMapper.getTotalCount(pager);
		pager.makeNum(totalCount);
		return eachEpMapper.getList(pager);	
	}
	
	public ToonVO getSelect(EachEpVO eachEpVO)throws Exception{
		eachEpMapper.setHitUpdate(eachEpVO);
		ToonVO toonVO=eachEpMapper.getSelect(eachEpVO);
		return toonVO;
	}
	
	public long updateScore(ReviewVO reviewVO)throws Exception{
		return eachEpMapper.updateScore(reviewVO);
	}
	
	public long deleteScore(ReviewVO reviewVO)throws Exception{
		return eachEpMapper.updateScore(reviewVO);
	}
}
