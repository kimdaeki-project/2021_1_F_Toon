package com.to.t1.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.to.t1.util.Pager;

@Service
public class ReviewService {

	@Autowired
	private ReviewMapper reviewMapper;
	
	public List<ReviewVO> getList(Pager pager) throws Exception {
		pager.makeRow();
	
		Long totalCount = reviewMapper.getTotalCount(pager);
		pager.makeNum(totalCount);
		System.out.println("sn : "+pager.getStartNum());
		System.out.println("per : "+pager.getPerPage());
		
		return reviewMapper.getList(pager);
	}
	
	public int setReview(ReviewVO reviewVO) throws Exception {
		return reviewMapper.setReview(reviewVO);
	}
	
	public int delReview(ReviewVO reviewVO) throws Exception {
		return reviewMapper.delReview(reviewVO);
	}
	
	public int updateReview(ReviewVO reviewVO) throws Exception {
		return reviewMapper.updateReview(reviewVO);
	}
	
}
