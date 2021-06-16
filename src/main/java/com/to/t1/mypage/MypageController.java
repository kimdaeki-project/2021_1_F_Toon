package com.to.t1.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.to.t1.board.notice.NoticeService;
import com.to.t1.member.MemberVO;
import com.to.t1.util.Pager;

@Controller
@RequestMapping("/mypage/**")
public class MypageController {
	
	@Autowired
	private MypageService mypageService;

	@GetMapping("recentToon") 
	public String getList(Pager pager, Model model,MemberVO memberVO)throws Exception{
		
		List<RecentVO> ar = mypageService.getList(memberVO);
		System.out.println(ar);
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		
		System.out.println("리센트툰");
		
		return "mypage/recentToon";
	}
	
	@GetMapping("favoriteToon") 
	public String getList2(Pager pager, Model model,MemberVO memberVO)throws Exception{
		
		List<RecentVO> ar = mypageService.getList2(memberVO);
		System.out.println(ar);
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		
		System.out.println("페이보릿툰");
		return "mypage/favoriteToon";
	}
	
	
}
