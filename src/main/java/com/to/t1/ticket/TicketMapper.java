package com.to.t1.ticket;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.to.t1.member.MemberVO;

@Mapper
public interface TicketMapper {

//	<!-- 이미 기존의 소장권이 있는지 조회하기 (결과는 1개 or 0개)-->
	public ToonTicketVO getTicketAlready(ToonTicketVO toonTicketVO) throws Exception;

//	<!-- 티켓 충전하기 -->
	
	//1. 기존에 작품 소장권 구매 내역이 있는 경우 티켓 가지기
	public int setBuyNewTicket(ToonTicketVO toonTicketVO) throws Exception; 
	//2. 기존에 작품 소장권 구매 내역이 없는 경우 티켓 가지기
	public int setBuyTicket(ToonTicketVO toonTicketVO)throws Exception;
	public int setUseMemberPoint(ToonTicketVO toonTicketVO)throws Exception;
	//	<!-- 소장권 구매내역 작성하기 -->
	public int setTBuyList(ToonTicketVO toonticketVO)throws Exception;
// 	<!-- 소장권 구매내역 조회하기 (리스트)-->
	public List<OrderTicketVO> getBuyTicketList(MemberVO memberVO)throws Exception;
	
	
//	<!-- 소장권 사용하기 -->
	public int setuseTicket(ToonTicketVO toonTicketVO)throws Exception;

//	<!--  소장권 사용 내역 작성하기 -->
	public int setTUseList(UseTicketVO useTicketVO)throws Exception;

//  <!-- 소장권 사용 내역 조회하기(리스트) -->
	public List<UseTicketVO> getTicketUseList(MemberVO memberVO,UseTicketVO useTicketVO)throws Exception;
	
// 환불 관련 : refund Table로 작성한다.
	
}
