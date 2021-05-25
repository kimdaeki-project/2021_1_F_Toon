package com.to.t1.member;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.to.t1.member.MemberVO;
import com.to.t1.member.MemberService;

@Controller
@RequestMapping("/member/**")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("join")
	public void join(Model model) throws Exception {
						//내용은 없는 빈 객체를 하나 보내줌
		model.addAttribute("memberVO", new MemberVO());
		System.out.println("S");
	}
	@PostMapping("join")
	public String join(@Valid MemberVO memberVO, Errors bindingResult)throws Exception{
		
		if(bindingResult.hasErrors()) {
			return "member/join";
		}
		System.out.println("Ss");
		return "redirect:/";
		
	}

}
