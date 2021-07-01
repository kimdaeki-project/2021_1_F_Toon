package com.to.t1.review;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.to.t1.toon.ToonService;
import com.to.t1.toon.eachep.EachEpService;

@Controller
@RequestMapping("/review/**")
public class ReviewController {

	@Autowired
	private ReviewService reviewService;
	@Autowired
	private ToonService toonService;
	@Autowired
	private EachEpService eachEpService;
	
	/*
	 * @PostMapping("reviewList") public void getList(Pager pager, Model
	 * model)throws Exception{ List<EachEpVO> list= reviewService.getList(pager);
	 * model.addAttribute("eachEpVO", list); model.addAttribute("pager", pager); }
	 */
	
	@PostMapping("setReview")
	public void setReview(ReviewVO reviewVO, Model model,Authentication auth)throws Exception{
		if(auth!=null) {
			reviewVO.setUsername(auth.getName());
			toonService.updateScore(reviewVO);
			eachEpService.updateScore(reviewVO);
			model.addAttribute("result", reviewService.setReview(reviewVO));
		}		
	}
	
	@PostMapping("delReview")
	public void delReview(ReviewVO reviewVO, Model model,Authentication auth)throws Exception{
		if(auth!=null) {
			reviewVO.setUsername(auth.getName());
			toonService.deleteScore(reviewVO);
			eachEpService.deleteScore(reviewVO);
			model.addAttribute("result", reviewService.delReview(reviewVO));
		}
	}
	
	@PostMapping("updateReview")
	public void updateReview(ReviewVO reviewVO, Model model,Authentication auth)throws Exception{
		if(auth!=null) {
			reviewVO.setUsername(auth.getName());
			model.addAttribute("result", reviewService.updateReview(reviewVO));

		}
	}

}
