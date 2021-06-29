package com.to.t1.toon.complete;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.to.t1.ticket.UseTicketVO;
import com.to.t1.toon.ToonVO;


@Mapper
public interface CompToonMapper {
	
	public EndToonVO getEndToonInfo(ToonVO toonVO)throws Exception;
	public List<EndEpVO> getEndToonList(UseTicketVO useTicketVO)throws Exception;
}
