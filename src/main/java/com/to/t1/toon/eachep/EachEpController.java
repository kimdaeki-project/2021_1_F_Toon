package com.to.t1.toon.eachep;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.to.t1.member.MemberService;
import com.to.t1.member.MemberVO;
import com.to.t1.point.PointService;
import com.to.t1.review.ReviewService;
import com.to.t1.review.ReviewVO;
import com.to.t1.ticket.TicketBoxVO;
import com.to.t1.ticket.UseTicketVO;
import com.to.t1.toon.ToonService;
import com.to.t1.toon.ToonVO;
import com.to.t1.util.Pager;

@Controller
@RequestMapping("/toon/**")
public class EachEpController {
	@Autowired
	private EachEpService eachEpService;
	@Autowired
	private ToonService toonService;
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private MemberService memberService;

	//결제

	@Autowired
	private PointService pointService;
	
	@GetMapping("eachEpList")
	public void getList(Pager pager,Model model,HttpSession httpSession,MemberVO memberVO,Authentication auth2, UseTicketVO useTicketVO)throws Exception{
		 
		
		if(auth2 != null) {
			memberVO = memberService.myPage((MemberVO) auth2.getPrincipal());
	    	useTicketVO.setUsername(memberVO.getUsername());
	    	List<UseTicketVO> utl = pointService.getToonTicktList(useTicketVO, pager);
	    	model.addAttribute("useTicketVO", utl); 
	    }
		

		ToonVO list=eachEpService.getList(pager);
		
		
		model.addAttribute("memberVO", memberVO); 
		
		model.addAttribute("toonVO", list);
		model.addAttribute("pager", pager);
		System.out.println("username"+memberVO.getUsername());    
	}
	

	
	
	
	
	
	
	
	@GetMapping("eachEpSelect")
	public void getSelect(EachEpVO eachEpVO,Pager pager, Model model,ModelAndView modelAndView,MemberVO memberVO,Authentication auth2)throws Exception{
		ToonVO list= eachEpService.getSelect(eachEpVO);
		ModelAndView mv = new ModelAndView();
		if(auth2 != null) {
	    	  memberVO = memberService.myPage((MemberVO) auth2.getPrincipal());
	    	  mv.addObject("memberVO",memberVO);
	      }
		
		model.addAttribute("toonVO", list);
		model.addAttribute("listsize", list.getEachEpVO().size());
		
		pager.setEpNum(eachEpVO.getEachEpNum());
		pager.setEachEpNum(eachEpVO.getEachEpNum());
		
		List<ReviewVO> reviewVO = reviewService.getList(pager);
		list.getEachEpVO().get(0).setReviewVO(reviewVO);
		
		System.out.println(list.getEachEpVO().size());
	}
	
	
	
	
	
	
}
