package com.to.t1.member;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.to.t1.member.MemberVO;
import com.to.t1.member.MemberService;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	@Autowired
	private MemberService memberService;
	@Autowired
    private JavaMailSender javaMailSender;

	@GetMapping("login")
	public String getLogin()throws Exception{
		return "member/memberLogin";
	}
	
	@PostMapping("memberLogin")
	public String getLogin(HttpServletRequest request)throws Exception{
		System.out.println("Message : "+ request.getAttribute("message"));
		return "member/memberLogin";
	}
	
	@GetMapping("loginFail")
	public String loginFail()throws Exception{
		System.out.println("Login Fail");
		return "redirect:/member/login";
	}
	
	@GetMapping("memberLoginResult")
	public String memberLoginResult(HttpSession session, Authentication auth2)throws Exception{
		
		//session의 속성명들 꺼내오기 
		Enumeration<String> en = session.getAttributeNames();
		
		while(en.hasMoreElements()) {
			System.out.println("Attribute Name : "+en.nextElement());
		}
		
		//로그인 시 session의 속성명 : SPRING_SECURITY_CONTEXT
		Object obj = session.getAttribute("SPRING_SECURITY_CONTEXT");
		
		SecurityContextImpl sc = (SecurityContextImpl)obj;
		
		Authentication auth= sc.getAuthentication();
		System.out.println("===================================");
		System.out.println("Name : "+auth.getName());
		System.out.println("Details : "+auth.getDetails());
		System.out.println("Principal : "+auth.getPrincipal());
		System.out.println("Authorities : "+auth.getAuthorities());
		System.out.println("===================================");
		
		System.out.println("===================================");
		System.out.println("Name : "+auth2.getName());
		System.out.println("Details : "+auth2.getDetails());
		System.out.println("Principal : "+auth2.getPrincipal());
		System.out.println("Authorities : "+auth2.getAuthorities());
		System.out.println("===================================");
		
		
		System.out.println(obj);
		
		System.out.println("Login 성공");
		return "redirect:/";
	}

//	@PostMapping("login")
//	public String getLogin(MemberVO memberVO, HttpSession session)throws Exception{
//
//		memberVO = memberService.getLogin(memberVO);
//
//		if(memberVO != null) {
//			session.setAttribute("member", memberVO);
//		}
//
//		return "redirect:/";
//	}

	@GetMapping("logout")
	public String logout(HttpSession session)throws Exception{

		session.invalidate();

		return "redirect:../";
	}

	@GetMapping("myPage") 
	public void myPage()throws Exception{
	}

	@PostMapping("myPage") 
	public void myPage(MemberVO memberVO,Model model)throws Exception{
		
	}
	
	@RequestMapping("searchId") 
	public void searchId()throws Exception{
	}

	@PostMapping("searchId")
	public String searchId(MemberVO memberVO,Model model)throws Exception{
		memberVO = memberService.searchId(memberVO);

		String message = "이름과 핸드폰 불일치";
		String messageType = "N";

		if(memberVO.getUsername() == null) {
			message="이름과 핸드폰 불일치";
			messageType="Y";
		} else {
			message="회원님의 아이디는 " + memberVO.getUsername()+" 입니다.";
			messageType="Y";
		}

		model.addAttribute("msg", message);
		model.addAttribute("messageType", messageType);

		System.out.println(memberVO.getUsername());
		System.out.println(message);

		return "member/memberLogin";
	}

	@GetMapping("memberIdCheck")
	public String memberIdCheck(MemberVO memberVO, Model model)throws Exception{
		memberVO = memberService.getUsername(memberVO);
		String result = "0";
		if(memberVO==null) {
			result="1";
		}

		model.addAttribute("result", result);
		return "common/ajaxResult";
	}

	@RequestMapping("searchPw") 
	public void searchPw()throws Exception{
	}

	@PostMapping("searchPw")
	public String searchPw(MemberVO memberVO,Model model)throws Exception{
		
		MemberVO memberVO2 = memberService.searchPw(memberVO);
		String message = "아이디와 핸드폰 불일치";
		String messageType = "N";

		if(memberVO2.getPassword() == null) {
			message="아이디와 핸드폰 불일치";
			messageType="Y";
		} else {
			memberVO.setPassword("0000");
			int result = memberService.pwUpdate(memberVO);
	
			message="회원님의 비밀번호는 (0000)"+memberVO.getPassword()+" 으로 초기화 되었습니다.";
			messageType="Y";
		}

		model.addAttribute("msg", message);
		model.addAttribute("messageType", messageType);

		return "member/memberLogin";
	}


	@RequestMapping("memberJoinCheck")
	public void memberJoinCheck()throws Exception{}

	@GetMapping("join")
	public String setJoin(@ModelAttribute MemberVO memberVO)throws Exception{
		return "member/memberJoin";
	}

	@PostMapping("join")
	public String setJoin(@Valid MemberVO memberVO,Errors errors, MultipartFile avatar, HttpSession session, Model model)throws Exception{
		System.out.println("Join Process" + memberVO.getName().length());
		if(memberService.memberError(memberVO, errors)) {
			return "member/memberJoin";
			
		} 	
		int result = memberService.setJoin(memberVO, avatar, session);
		String message = "회원가입 실패";
		String path="./memberJoin";
		
		if(result>0) {
			message ="회원 가입 성공";
			path="../";
		}
		
		model.addAttribute("msg", message);
		model.addAttribute("path", path);
		return "common/commonResult";
	}

	@RequestMapping("memberUpdate")
	public void memberUpdate()throws Exception{}

	@PostMapping("memberUpdate")
	public String memberUpdate(MemberVO memberVO, HttpSession session)throws Exception{
		int result = memberService.memberUpdate(memberVO);

		if(result>0) {
			session.setAttribute("member", memberVO);
		}
		return "redirect:../";
	}

	@RequestMapping("memberDelete")
	public ModelAndView memberDelete(HttpSession session)throws Exception{
		MemberVO memberVo =(MemberVO)session.getAttribute("member");
		ModelAndView mv = new ModelAndView();
		int result = memberService.memberDelete(memberVo, session);
		session.invalidate();
		
		String message="회원가입 탈퇴 실패";
		String path = "./memberUpdate";
		
		if(result>0) {
			message="회원가입 탈퇴 성공";
		}
		mv.addObject("msg", message);
		mv.addObject("path", path);
		mv.setViewName("common/commonResult");
		return mv;
	}

	   @GetMapping("CheckMail")
	   @ResponseBody
	   public String SendMail(Model model,String email, HttpSession session) {
		  System.out.println("왜안되냐 ㅠ");
	      Random random = new Random();
	      String key = "";
	     
	      SimpleMailMessage message = new SimpleMailMessage();
	      message.setTo(email); // 스크립트에서 보낸 메일을 받을 사용자 이메일 주소
	      // 입력 키를 위한 코드
	      for (int i = 0; i < 3; i++) {
	         int index = random.nextInt(25) + 65; // A~Z까지 랜덤 알파벳 생성
	         key += (char) index;
	      }
	     
	      int numIndex = random.nextInt(8999) + 1000; // 4자리 정수를 생성
	      key += numIndex;
	      message.setSubject("TOON 인증번호");
	      message.setText("TOON 인증번호입니다.\n"+"인증 번호 : "+key);
	      javaMailSender.send(message);
	      model.addAttribute("key", key);
	      System.out.println(key);
	      
	      return key;
	   }
	   
}

