package com.to.t1.point;


import java.util.Map; //jSON 파서용 
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.to.t1.member.MemberVO;

@Controller
@RequestMapping("**/point/**")

public class PointController {
	
	@Autowired
	public PointService pointservice;
	
	//검증 관련
//	@Autowired
//	private IamportClient api;
//	//소장권 사용 내역 조회
	
	//가지고 있는 이용권 조회 (웹툰 이름과, 웹툰 이동url , 썸네일 사진, 보유 소장권 갯수 )
	
	//소장권 구입 (insert)페이지 진입
	@GetMapping("charge")
	public String chargePoint(Model model, HttpSession httpSession, PointVO chargePointVO) throws Exception{
//		this.api = new IamportClient("8955862071146697",
//				"cf9f6e33a37773d3792a17d3584428236a9a3fcbbf4998fa8d5c2dfb89730544b2b4df1b4f38a62d");
//		
		return "point/charge";
		
	}
	//충전을 하는 경우 1. 상단에 point/charge에 들어왔다. 2. 웹툰 소장권을 사려다가 포인트가 모자라서 들어왔다.
	@ResponseBody
	@RequestMapping(value="success", method = RequestMethod.POST)
	public String storePoint(@RequestParam Map<String, Object> param,Model model,HttpSession httpSession) throws Exception{
		
		int result = pointservice.ChargePoint(param);
		
		return "member/myPage";
	}
	
//	//RESTAPI 검증
//	@ResponseBody
//	@RequestMapping(value="/verifyIamport/{imp_uid}")
//	public IamportResponse<Payment> paymentByImpUid( Model model, Locale locale, 
//			HttpSession session, @PathVariable(value= "imp_uid") String imp_uid) 
//					throws IamportResponseException, IOException
//	{	
//			return api.paymentByImpUid(imp_uid);
//	}
	//소장권 구입  
	//파라미터 값 : 1. user정보 , 2.(사용 할)EP정보
	//리턴 : 진행상황,(int로 반환) 
	@PostMapping("getTicket")
	public String getTicket(MemberVO memberVO,PointVO usePointVO, Model model)throws Exception{
		String path = "/";
		int result =pointservice.UsePoint(memberVO, usePointVO);
		
		switch(result) {
		case 0 : //결제 실패시, error 500인 경우  
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
	
	//소장권 사용
	@PostMapping("useTicket")
	public void useTicket() throws Exception{
		//1. 소장권 조회 
		//2-1. 소장권의 컬럼이 없거나 stock ==0 이고 포인트가 200 이상인 경우, -> 소장권 구입 이동
		//2-2. 소장권의 컬럼이 없거나 stock ==0 이고 포인트가 200 미만인 경우  -> 포인트 충전 이동
		//2-3. 소장권의 stock >1 인 경우 : 소장권 구입하고 소장권 구입 URL로 이동하기 
		
		
	}
	
	
	
	
}
