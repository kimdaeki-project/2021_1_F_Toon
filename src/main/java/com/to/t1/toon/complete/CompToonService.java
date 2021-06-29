package com.to.t1.toon.complete;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.to.t1.ticket.UseTicketVO;
import com.to.t1.toon.ToonVO;


@Service
public class CompToonService {
	
	@Autowired
	private CompToonMapper compToonMapper;
	
	//1. toonVO 관련 조회
	 public EndToonVO getEndToonInfo (ToonVO toonVO)throws Exception {
		 return compToonMapper.getEndToonInfo(toonVO);
	 }
	//2. Eplist에서 조회
	public List<EndEpVO> getEndToonList(UseTicketVO useTicketVO)throws Exception{
		return compToonMapper.getEndToonList(useTicketVO);
	}
}
