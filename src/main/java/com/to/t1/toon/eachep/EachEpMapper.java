package com.to.t1.toon.eachep;

import org.apache.ibatis.annotations.Mapper;

import com.to.t1.toon.ToonVO;
import com.to.t1.util.Pager;

@Mapper
public interface EachEpMapper {

	public ToonVO getList(Pager pager)throws Exception;
	public Long getTotalCount(Pager pager)throws Exception;
	public ToonVO getSelect(EachEpVO eachEpVO)throws Exception;
	
	public long setHitUpdate(EachEpVO eachEpVO)throws Exception;
}
