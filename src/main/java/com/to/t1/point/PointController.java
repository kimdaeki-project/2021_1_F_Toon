package com.to.t1.point;

import java.util.Map; //jSON 파서용 
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.to.t1.ticket.TicketBoxVO;
import com.to.t1.ticket.UseTicketVO;

import retrofit2.http.POST;

@Controller
@RequestMapping("**/point/**")

public class PointController {
	
	@Autowired
	public PointService pointservice;
	

	//가지고 있는 이용권 조회 (웹툰 이름과, 웹툰 이동url , 썸네일 사진, 보유 소장권 갯수 )
	
	//소장권 구입 (insert)페이지 진입
	@GetMapping("charge")
	public String chargePoint(Model model, HttpSession httpSession, PointVO PointVO) throws Exception{
		
		return "point/charge";
		
	}
	//포인트 충전
	@PostMapping("getPoint")
	@ResponseBody
	public String setPoint(@RequestBody Map<String, String> param,Model model,HttpSession httpSession) throws Exception{
		
		//System.out.println(param);
		int result = pointservice.chargePoint(param);
		if(result == 0 ) {
			return "../member/myPage";
		}
		return "../member/myPage";
	}

	//소장권 구입  
	//파라미터 값 : 1. user정보 , 2.(사용 할)EP정보
	//리턴 : 진행상황,(int로 반환) 
	@PostMapping("ticketCharge")
	public String getTicket(@RequestParam Map<String,Object> param, HttpSession httpSession,Model model, 
			TicketBoxVO ticketBoxVO)throws Exception{
		//TicktBox조회 
		
		long isAlready = pointservice.checkTicketBox(ticketBoxVO);
		param.put("isAlredy",isAlready);
		
		model.addAttribute("info",param);
		model.addAttribute("ticketBox",ticketBoxVO);
		model.addAttribute("isAlready",isAlready);
		System.out.println("info" + param);
		System.out.println("ticketBox "+ ticketBoxVO);
		
		return "point/getTicket";
	}
	//티켓 뭉텅이나 한두개 구입하기
	@PostMapping("getToonTicket")
	public String getToonTicket(PointVO pointVO, TicketBoxVO ticketBoxVO,
			NextSuccessVO nextSuccessVO,
			HttpSession httpSession)throws Exception {
		String path = "toon/eachEpList?toonNum=";
		System.out.println("nextsuccess : "+ nextSuccessVO.getNextsuccess());
		long isAlready = pointservice.checkTicketBox(ticketBoxVO);
		
		int result = pointservice.getTicket(pointVO, ticketBoxVO, isAlready);
		//경로 처리하기 
		System.out.println("get Ticket Result"+ result);
		if(result != 0) {
			path = path+ticketBoxVO.getToonNum();
		}else {//소장권 구입 실패 시 , 그래도다음 페이지 갈 것 
			path = path+ticketBoxVO.getToonNum();
		}
		return "redirect:../" + path ;
	}
	
	
	//소장권 가지고 있는지 확인하기 있다면 페이지 이동
	@PostMapping("checkTicket")
	@ResponseBody
	public String checkUseTicket(@RequestBody Map<String,Object> param) throws Exception{
		String url = "0";
		System.out.println("param:" + param);
		
		String toonNum = String.valueOf(param.get("toonNum"));
		String eachEpNum = String.valueOf(param.get("eachEpNum"));
		System.out.println(toonNum + ":" + eachEpNum);
		
		long result = pointservice.CheckUseTicket(param);
		
		System.out.println("result : "+result);
		
		if(result != 0) {
			//해당 post전송하기
			url = "/toon/eachEpSelect?toonNum="+toonNum+"&eachEpNum="+eachEpNum;
		}else {
			url = "0";
		}
		
		return url;
				
	}
	//소장권 사용 (1개 차감 및 페이지 이동하기)
	@PostMapping("getNuseTicket")
	@ResponseBody
	public String useTicket(@RequestBody Map<String,String> param,
		TicketBoxVO ticketBoxVO,UseTicketVO useTicketVO) throws Exception{
		
		System.out.println("param3 : "+param);
		System.out.println(ticketBoxVO);
		System.out.println(useTicketVO);
		String url = "/";
		//티켓 쓰기...
		int result = pointservice.setuseTicket(param, useTicketVO, ticketBoxVO);
		//eachepNum 찾기
		long toonNum = Long.parseLong(param.get("toonNum"));
		long eachEpNum = pointservice.SelectEachEpNum(param);
		
		//System.out.println(eachEpNum);
		//3. 모두 성공하면 0 or 1 return 하기
		if(result != 0) {
			//해당 post전송하기
			url = "/toon/eachEpSelect?toonNum="+toonNum+"&eachEpNum="+eachEpNum;
		}else {
			url = "/toon/eachEpList?toonNum="+toonNum;
		}
		return url;
	}
	//포인트로 티켓 1개 구매하기 
	@PostMapping("directGetTicket")
	@ResponseBody
	public String directgetTicket(@RequestBody Map<String,Object> param, 
			PointVO pointVO , TicketBoxVO ticketBoxVO
			)throws Exception {
		
		int result =0;
		
		System.out.println("param :"+param);
		String username= String.valueOf(param.get("username"));
		
		String contents= String.valueOf(param.get("contents"));
		
		String tnum = String.valueOf(param.get("toonNum"));
		long toonNum = Long.parseLong(tnum);
		
		pointVO.setUsername(username);
		pointVO.setPoint(200);
		pointVO.setContents(contents);
		
		ticketBoxVO.setUsername(username);
		ticketBoxVO.setToonNum(toonNum);
		ticketBoxVO.setSort(1);
		ticketBoxVO.setStock(1);;
		
		System.out.println(ticketBoxVO);
		System.out.println(pointVO);
		
		pointservice.checkTicketStock(param,ticketBoxVO); // stock의 갯수 가져오기
		
		long isAlready = pointservice.checkTicketBox(ticketBoxVO);
		result = pointservice.getTicket(pointVO, ticketBoxVO, isAlready);
		String result2 =  Integer.toString(result);
		System.out.println("result2 :" + result2);
		
		return result2;
		
	}
	
	//검증 관련
//	@Autowired
//	private IamportClient api;
//	//소장권 사용 내역 조회
		
//	//RESTAPI 검증
//	@ResponseBody
//	@RequestMapping(value="/verifyIamport/{imp_uid}")
//	public IamportResponse<Payment> paymentByImpUid( Model model, Locale locale, 
//			HttpSession session, @PathVariable(value= "imp_uid") String imp_uid) 
//					throws IamportResponseException, IOException
//	{	
//			return api.paymentByImpUid(imp_uid);
//	}
	
//	this.api = new IamportClient("8955862071146697",
//	"cf9f6e33a37773d3792a17d3584428236a9a3fcbbf4998fa8d5c2dfb89730544b2b4df1b4f38a62d");
//
	
	
}