package com.to.t1.toon.eachep;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.to.t1.util.Pager;

@Mapper
public interface EachEpMapper {

	public List<EachEpVO> getList(Pager pager)throws Exception;
	public Long getTotalCount(Pager pager)throws Exception;
	public EachEpVO getSelect(EachEpVO eachEpVO)throws Exception;
	
	public long setHitUpdate(EachEpVO eachEpVO)throws Exception;
}
