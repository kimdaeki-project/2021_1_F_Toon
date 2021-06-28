package com.to.t1.mypage2;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.to.t1.member.MemberService;
import com.to.t1.member.MemberVO;
import com.to.t1.mypage.RecentVO;
import com.to.t1.point.PointService;
import com.to.t1.point.PointVO;
import com.to.t1.util.Pager;

@Controller
@RequestMapping("/mypage2/**")
public class Mypage2Controller {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private PointService pointService;
	

	@GetMapping("pointCharge") 
	public String getList(Model model, MemberVO memberVO, Pager pager)throws Exception{
		
		List<PointVO> ar = pointService.getMyChargePointList(memberVO, pager);
		
		memberVO = memberService.myPage(memberVO);
	
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		model.addAttribute("memberVO", memberVO);
		
		System.out.println("포인트 충전 내역 조회");
		System.out.println(ar);
		
		return  "mypage2/pointCharge";
	}
	
	@GetMapping("pointUse") 
	public String pointUse(Model model, MemberVO memberVO, Pager pager)throws Exception{
		List<PointVO> ar = pointService.getMyUsePointList(memberVO, pager);
		
		memberVO = memberService.myPage(memberVO);
		
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		model.addAttribute("memberVO", memberVO);
		
		System.out.println("포인트 사용 내역 조회");

		return  "mypage2/pointUse";
	}
	
	@GetMapping("ticketCharge") 
	public String ticketCharge(Model model, MemberVO memberVO, Pager pager)throws Exception{
		List<PointVO> ar = pointService.getToonTicktList(memberVO, pager);
				
				
		memberVO = memberService.myPage(memberVO);
		
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		model.addAttribute("memberVO", memberVO);
		
		System.out.println("소장권 구매 내역 조회");

		return  "mypage2/ticketCharge";
	}
	
	@GetMapping("ticketUse") 
	public String ticketUse(MemberVO memberVO, Authentication auth2, Model model)throws Exception{
//		List<PointVO> ar = pointService.getUseTicketList(memberVO);
//		memberVO = memberService.myPage((MemberVO) auth2.getPrincipal());
//		
//		model.addAttribute("memberVO", memberVO);
//		model.addAttribute("list", ar);
//		
		System.out.println("소장권 사용 내역 조회");
//
		return  "mypage2/ticketUse";
	}
	
}
