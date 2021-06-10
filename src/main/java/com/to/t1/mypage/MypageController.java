package com.to.t1.mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/mypage/**")
public class MypageController {

	@GetMapping("recentToon") 
	public void recentToon()throws Exception{
	}
	
}
