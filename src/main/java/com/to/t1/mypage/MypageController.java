package com.to.t1.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.to.t1.board.notice.NoticeService;
import com.to.t1.util.Pager;

@Controller
@RequestMapping("/mypage/**")
public class MypageController {
	
	@Autowired
	private MypageService mypageService;

	@GetMapping("recentToon") 
	public ModelAndView getList(Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<RecentVO> ar = mypageService.getList(pager);
		System.out.println(ar);
		mv.addObject("list", ar);
		mv.setViewName("mypage/recentToon");
		mv.addObject("pager", pager);
		
		return mv;
	}
	
	
	
}
