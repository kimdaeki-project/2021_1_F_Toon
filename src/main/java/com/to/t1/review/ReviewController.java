package com.to.t1.review;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.to.t1.member.MemberVO;
import com.to.t1.toon.ToonService;
import com.to.t1.toon.eachep.EachEpVO;
import com.to.t1.util.Pager;

@Controller
@RequestMapping("/review/**")
public class ReviewController {

	@Autowired
	private ReviewService reviewService;
	@Autowired
	private ToonService toonService;
	
	/*
	 * @PostMapping("reviewList") public void getList(Pager pager, Model
	 * model)throws Exception{ List<EachEpVO> list= reviewService.getList(pager);
	 * model.addAttribute("eachEpVO", list); model.addAttribute("pager", pager); }
	 */
	
	@PostMapping("setReview")
	public void setReview(ReviewVO reviewVO,HttpSession session, Model model)throws Exception{
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		if(memberVO==null) {
			model.addAttribute("result", 0);
		}else {
			reviewVO.setUsername(memberVO.getUsername());
			toonService.updateScore(reviewVO);
			model.addAttribute("result", reviewService.setReview(reviewVO));
		}		
	}
	
	@PostMapping("delReview")
	public void delReview(ReviewVO reviewVO, Model model)throws Exception{
		toonService.deleteScore(reviewVO);
		model.addAttribute("result", reviewService.delReview(reviewVO));
	}

}
