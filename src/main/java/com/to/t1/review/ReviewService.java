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
//		pager.setCurPage(pager.getCurPage() == 0 ? 1 : pager.getCurPage());
//		pager.setCurBlock(pager.getCurBlock() == 0 ? 1 : pager.getCurBlock());
//		pager.makecal(reviewMapper.getTotalCount(pager));
		pager.makeRow();
		Long totalCount = reviewMapper.getTotalCount(pager);
		pager.makeNum(totalCount);
		return reviewMapper.getList(pager);
	}
	
	public int setReview(ReviewVO reviewVO) throws Exception {
		return reviewMapper.setReview(reviewVO);
	}
	
	public int delReview(ReviewVO reviewVO) throws Exception {
		return reviewMapper.delReview(reviewVO);
	}
	
}
