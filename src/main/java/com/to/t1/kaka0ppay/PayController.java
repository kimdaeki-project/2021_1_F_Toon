package com.to.t1.kaka0ppay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("**/pay/**")

public class PayController {
//임시 컨트롤러
	@Autowired
	private PayService payService;
	 
	//페이지 이동하기 (임시)
	@GetMapping("charge")
	public String PayTest(Model model) throws Exception{
		//성공시 sucess페이지와 충전 완료 alert창 띄우고 임시로 sysout에 출력한다.
		return "pay/payPage"; //return JSP경로
	}
	
	
    @GetMapping("kakaoPay")
    public String kakaoPayGet() {
        return "pay/chargeFail";
    }
    
    @PostMapping("kakaoPay")
    public String kakaoPay() {
        log.info("kakaoPay post...");
        
        return "redirect:" + payService.kakaoPayReady();
 
    }
    
    @GetMapping("chargeSuccess")
    public void kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model) {
    	
    	
    	log.info("kakaoPaySuccess get....");
        log.info("kakaoPaySuccess pg_token : " + pg_token);
        
        model.addAttribute("info", payService.kakaoPayInfo(pg_token));
        //성공시 : 결제내역 insert하기 
        //실패시(중단, 실패) : 결제요쳥 삭제하기 
    }
	
    //환불하기 : 내가 상대의 정보로 금액을 보내주는 것과 같다.
    
    
}
//KAKAO PAY의 경우...
//Admin KEY : b869402576b56c83ad83badfa54958fd
//web id : 	591949
//Test cid :  'TC0ONETIME'
