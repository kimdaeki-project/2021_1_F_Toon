package com.to.t1.pay;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("**/pay/**")
public class PayController {
//임시 컨트롤러
	
	//결제하기 
	@GetMapping("charge")
	public String PayTest() throws Exception{
		return "pay/payPage"; //JSP경로
	}
	//환불하기
	
}
