package com.to.t1.home;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.to.t1.member.MemberVO;

/**
  =======================================
               JSP Project
  =======================================
  */

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String home(MemberVO memberVO, HttpSession session, Authentication auth2, Model model) {
		model.addAttribute("message", "JSP Project");
		model.addAttribute("user", "iu");
		model.addAttribute("msg", "test");
	
		return "index";
	}
	
	@GetMapping("/admin")
	public void admin() {
		System.out.println("admin!!!");
	}
	
	@GetMapping("/member")
	public void member() {
		System.out.println("memberuser!!!");
	}
	@GetMapping("companyMap")
	public String companyMap(Model model) {
			
		return "companyMap";
	}
	

}