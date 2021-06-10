package com.to.t1.point;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.to.t1.member.MemberVO;

@Controller
@RequestMapping("**/point/**")
public class PointController {
	
	@Autowired
	public PointService pointservice;
	
	//소장권 사용 내역 조회
	
	//가지고 있는 이용권 조회 (웹툰 이름과, 웹툰 이동url , 썸네일 사진, 보유 소장권 갯수 )
	
	//소장권 구입 (insert) 혹은 수정
	@GetMapping("chargePoint")
	public String chargePoint(Model model, HttpSession httpSession,ChargePointVO chargePointVO) throws Exception{
		
		return "";
		
	}
	@PostMapping("usePoint/")
	//이용권 사용, postMapping 사용 할 것 
	public String usePoint(MemberVO memberVO,UsePointVO usePointVO, Model model)throws Exception{
		String path = "/";
		int result =pointservice.UsePoint(memberVO, usePointVO);
		
		switch(result) {
		case 0 : //결제 실패시 500문제 
			break;
		case 1 :  // 결제 성공시 
			
			model.addAttribute("UsePointVO",usePointVO);
			
			path = "view페이지로 이동할 것";
			break;
		case 3 : //금액이 모잘라서 충전을 해야하는 경우 :ChargePoint 컨트롤러 명령어 줄 것 
			path ="charge페이지로 이동할 것";
			break;
		default : 
			break;
		}
		return path;
	}
	
	
}
