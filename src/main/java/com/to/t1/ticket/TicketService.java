package com.to.t1.ticket;

import java.util.List;
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.to.t1.member.MemberVO;

@Service
public class TicketService {
	
	@Autowired
	private TicketMapper ticketMapper;
	
	//소장권 구매 서비스 
	public int setbuyTicket(MemberVO memberVO, ToonTicketVO toonticketVO) throws Exception {
		
		//가지고 있는 소장권 조회 (웹툰 이름과, 웹툰 이동 url , 썸네일 사진, 보유 소장권 갯수)
		//1. 쿼리로 파라미터를 보내서 칼럼이 있는지 조회를 한다.
		
		ToonTicketVO have = ticketMapper.getTicketAlready(toonticketVO);
		//소장권 구입 
		
		int result = 0;
		if (Objects.isNull(have)) {
			//2.2처음구입하는 웹툰 이용권인 경우 (조회 칼럼수가 0인 경우)
			//맴버 userName과 toon으로 insert 문 실행
			result = ticketMapper.setBuyNewTicket(toonticketVO);
			//result = ticketMapper.
			result = ticketMapper.setTBuyList(toonticketVO);
		}else {
			//2.1이미 해당 웹툰 이용권을 구입했을 경우 (조회 칼럼 수가 1인 경우) 
			 //userName과 toonNum으로 update문 실행
			result = ticketMapper.setBuyTicket(toonticketVO);
			result = ticketMapper.setTBuyList(toonticketVO);
		}
		
		return result;
	}
	//소장권 사용 서비스 (1개 사용)
	public int useOneTicket(MemberVO memberVO, ToonTicketVO toonticketVO,UseTicketVO useTicketVO) throws Exception {
		int result =0;
		
		//1. 구입했던 웹툰인지?
		
		//2. 소장권 갯수는 충분이 있는지?
		ToonTicketVO have = ticketMapper.getTicketAlready(toonticketVO);
		if(Objects.isNull(have) || have.getCount() < 1 ) {
			//구입 이력이 없거나 소장권의 갯수가 모자른 경우?
			result = 0;
		}else {
			//갯수가 있는 경우 
			//티켓 차감 , 내역 작성하기 
			result = ticketMapper.setuseTicket(toonticketVO);
			result = ticketMapper.setTUseList(useTicketVO);
			System.out.println("result = "+result);
		}
		
		return result;
	}
	
	
	//소장권 구입내역 조회(리스트)
	public List<OrderTicketVO> getBuyTicketList(MemberVO memberVO)throws Exception{
		return ticketMapper.getBuyTicketList(memberVO);
	}
	
	//소장권 사용 내역 조회(단독 컬럼)
	//소장권 사용내역 조회(리스트) 
	public List<UseTicketVO> getOrderTicketList (MemberVO memberVO, UseTicketVO useTicketVO) throws Exception{
		return ticketMapper.getTicketUseList(memberVO, useTicketVO);
	}
}
