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
	public String getList(MemberVO memberVO, Authentication auth2, Model model, Pager pager)throws Exception{
		
		List<PointVO> ar = pointService.getMyChargePointList(memberVO);
		memberVO = memberService.myPage((MemberVO) auth2.getPrincipal());
	
		
		model.addAttribute("memberVO", memberVO);
		model.addAttribute("list", ar);
		
		System.out.println("포인트 충전 내역 조회");
		System.out.println("멤버브이오 :"+memberVO);
		System.out.println("에이알 :"+ar);
		return  "mypage2/pointCharge";
	}
	
	
//	@GetMapping("recentToon") 
//	public String getList(Model model, MemberVO memberVO, Pager pager)throws Exception{
//		
//		List<RecentVO> ar = mypageService.getList(memberVO, pager);
//		
//		memberVO = memberService.myPage(memberVO);	
//
//		model.addAttribute("list", ar);
//		model.addAttribute("pager", pager);
//		model.addAttribute("memberVO", memberVO);
//		
//		System.out.println(pager.getStartNum());
//		System.out.println(pager.getLastNum());
//		
//		System.out.println("리센트툰");
//		
//		return "mypage/recentToon";
//	}
	@GetMapping("pointUse") 
	public String pointUse(MemberVO memberVO, HttpSession session, Authentication auth2, Model model)throws Exception{
		System.out.println(auth2.getPrincipal());		
		memberVO = memberService.myPage((MemberVO) auth2.getPrincipal());
		model.addAttribute("memberVO", memberVO);
		
		System.out.println("포인트 사용 내역 조회");

		return  "mypage2/pointUse";
	}
	
}
