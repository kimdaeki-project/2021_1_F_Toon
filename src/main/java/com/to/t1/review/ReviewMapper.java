package com.to.t1.review;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.to.t1.util.Pager;

@Mapper
public interface ReviewMapper {

	public List<ReviewVO> getList(Pager pager) throws Exception;
	
	public long getTotalCount(Pager pager) throws Exception;
	public int setReview(ReviewVO reviewVO) throws Exception;
	public int delReview(ReviewVO reviewVO) throws Exception;
	
}
