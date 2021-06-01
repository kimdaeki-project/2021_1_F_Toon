package com.to.t1.member.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/**")
public class AdminController {
// Admin 기능 : 1. [회원, 작품 ]조회 2. [작가, 작품]승인 
//3. [충전액]환불 4. Notice와  QNA관리(x) 
	
	//일단 접촉은 해야지
	@GetMapping("adminPage")
	public String adminHome(Model model) {
		return "admin/adminPage";
	}
	//탬플릿 임시용 
	@GetMapping("test")
	public String admintest(Model model) {
		return "admin/test";
	}
	
	
}
