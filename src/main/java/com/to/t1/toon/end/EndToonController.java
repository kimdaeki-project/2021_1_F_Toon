package com.to.t1.toon.end;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.to.t1.member.MemberService;
import com.to.t1.member.MemberVO;
import com.to.t1.point.PointService;
import com.to.t1.review.ReviewService;
import com.to.t1.review.ReviewVO;
import com.to.t1.ticket.TicketBoxVO;
import com.to.t1.toon.ToonService;
import com.to.t1.toon.ToonVO;
import com.to.t1.toon.eachep.EachEpService;
import com.to.t1.toon.eachep.EachEpVO;
import com.to.t1.util.Pager;

@Controller
@RequestMapping("**/endToon/**")
public class EndToonController {
	
	@Autowired
	private EachEpService eachEpService;
	@Autowired
	private ToonService toonService;
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private MemberService memberService;
	@Autowired
	private PointService pointService;
	
	//EndToon만화 + 화수 리스트 조회
	@GetMapping("endToonList")
	public String EndToonList (
			@RequestParam Map<String,Object> param, Model model, 
			Authentication auth,MemberVO memberVO,TicketBoxVO ticketBoxVO, Pager pager 
			)throws Exception {
		if(auth != null) {
			memberVO = memberService.myPage((MemberVO) auth.getPrincipal());
	    	param.put("username",memberVO.getUsername());
	    	ticketBoxVO = pointService.checkTicketStock(param, ticketBoxVO);
	    	//System.out.println(ticketBoxVO);
	    	model.addAttribute("ticketBox",ticketBoxVO);
	    	model.addAttribute("memberVO", memberVO); 
	    	//System.out.println("username"+memberVO.getUsername());
	    }
		
		
		ToonVO list=eachEpService.getList(pager);	
		
		model.addAttribute("info",param);
		model.addAttribute("toonVO", list);
		model.addAttribute("pager", pager);
		return "toon/endToonEpList";
	}
	//한 화를 보여주는 컨트롤러
	@GetMapping("endTEpSelect")
	public String getSelect(EachEpVO eachEpVO,Pager pager, 
			Model model,ModelAndView modelAndView,MemberVO memberVO, 
			@RequestParam Map<String,Object> param,TicketBoxVO ticketBoxVO,
			Authentication auth)throws Exception{
		ToonVO list= eachEpService.getSelect(eachEpVO);
		ModelAndView mv = new ModelAndView();
		
		if(auth != null) {
			memberVO = memberService.myPage((MemberVO) auth.getPrincipal());
	    	param.put("username",memberVO.getUsername());
	    	ticketBoxVO = pointService.checkTicketStock(param, ticketBoxVO);
	    	//System.out.println(ticketBoxVO);
	    	model.addAttribute("ticketBox",ticketBoxVO);
	    	model.addAttribute("memberVO", memberVO); 
	    	
	   }
		
		model.addAttribute("toonVO", list);
		model.addAttribute("listsize", list.getEachEpVO().size());
		
		pager.setEpNum(eachEpVO.getEachEpNum());
		pager.setEachEpNum(eachEpVO.getEachEpNum());
		
		List<ReviewVO> reviewVO = reviewService.getList(pager);
		list.getEachEpVO().get(0).setReviewVO(reviewVO);
		System.out.println(list.getEachEpVO().size());
		return "toon/eachEpSelectSec";
	}
	
}
