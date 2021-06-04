package com.to.t1.toon.eachep;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.to.t1.util.Pager;

@Service
public class EachEpService {
	@Autowired
	private EachEpMapper eachEpMapper;
	
	public List<EachEpVO> getList(Pager pager)throws Exception{
//		pager.setCurPage(pager.getCurPage()==0?1:pager.getCurPage());
//		pager.setCurBlock(pager.getCurBlock()==0?1:pager.getCurBlock());
//		pager.makecal(eachEpMapper.getTotalCount(pager));
		pager.makeRow();
		Long totalCount = eachEpMapper.getTotalCount(pager);
		pager.makeNum(totalCount);
		return eachEpMapper.getList(pager);	
	}
	
	public EachEpVO getSelect(EachEpVO eachEpVO)throws Exception{
		eachEpMapper.setHitUpdate(eachEpVO);
		return eachEpMapper.getSelect(eachEpVO);
	}
	
	
}
