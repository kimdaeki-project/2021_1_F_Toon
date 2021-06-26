package com.to.t1.util;

import java.util.List;

import org.springframework.stereotype.Component;

import com.to.t1.ticket.UseTicketVO;
import com.to.t1.toon.eachep.EachEpVO;

@Component
public class CheckTicket {
	
	//1.웹툰 toon으로 조회한 EachEpVOList ,username과 toonNum으로 조회한 useTicketList 보낸다.
	//2.비교연산 시작하고 EpVO안 useTicketVO에 값은 넣던가 안넣던가...
	//3.프론트는 sort로 open 구분한다.
	//4. 
	
	public List<EachEpVO> CheckUseList(List<EachEpVO> eachEpVOs,List<UseTicketVO> useTicketVOs){
		
		
		return eachEpVOs;
	}
	
}
