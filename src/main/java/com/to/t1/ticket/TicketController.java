package com.to.t1.ticket;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("**/ticket/**")
public class TicketController {
//웹툰 이용권 관련 , 사용table: ticket , useTicket
	
	//소장권 사용 내역 조회
	
	//가지고 있는 이용권 조회 (웹툰 이름과, 웹툰 이동url , 썸네일 사진, 보유 소장권 갯수 )
	
	//소장권 구입 (insert) 혹은 수정
	public void buyTicket() throws Exception{
		
		//1. 쿼리로 파라미터를 보내서 칼럼이 있는지 조회를 한다.
		
		//2.1이미 해당 웹툰 이용권을 구입했을 경우 (조회 칼럼 수가 1인 경우)
		//맴버 userName과 toon으로 insert 문 실행
		
		//2.2처음구입하는 웹툰 이용권인 경우 (조회 칼럼수가 0인 경우)
		//userName과 toonNum으로 update문 실행
		
	}
	
	//이용권 사용 (update)
	public void useTicket()throws Exception{
		//0. 보유하고 있는 티켓이 있는지 조회
		//1. 보유시,이용권 갯수 1개 차감, 구입내역에 기록한다
		
		//2. 미보유시, buyTicket페이지로 이동한다.
		
	}
	//이용권 환불(삭제),관리자 전용
	public void refundTicket()throws Exception{
		
	}
	
}
