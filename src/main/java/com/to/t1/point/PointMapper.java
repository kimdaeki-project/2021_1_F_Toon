package com.to.t1.point;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.to.t1.member.MemberVO;
import com.to.t1.ticket.TicketBoxVO;
import com.to.t1.ticket.UseTicketVO;
import com.to.t1.util.Pager;

@Mapper
public interface PointMapper {
	
	public MemberVO selectMyPoint(MemberVO memberVO)throws Exception;
	
	public int setMyPointcount(PointVO pointVO)throws Exception;
	
	public int setMyPointList(PointVO pointVO)throws Exception;
	
	//**여기서부터
	//포인트 충전내역 조회
	public List<PointVO> getMyChargePointList (Map map)throws Exception;
	public long getTotalCount1(Map map) throws Exception;
	
	//포인트 사용내역 조회
	public List<PointVO> getMyUsePointList (Map map)throws Exception;
	public long getTotalCount2(Map map) throws Exception;
	
	//소장권 구매내역 조회
	public List<PointVO> getToonTicktList(Map map)throws Exception;
	public long getTotalCount3(Map map) throws Exception;
	
	//소장권 구매내역 조회
	public List<PointVO> getUseTicktList(Map map)throws Exception; 	
	public long getTotalCount4(Map map) throws Exception;
	//여기까지 성현 손댐** ㅇㅋ?
	
	public long checkTicketBox(TicketBoxVO ticketBoxVO)throws Exception;
	public TicketBoxVO checkTicketStock(TicketBoxVO ticketBoxVO)throws Exception;
	
	public int updateTicketStock(TicketBoxVO ticketBoxVO)throws Exception;
	public int insertTicketStock(TicketBoxVO ticketBoxVO)throws Exception;
	
	public int setTicketUselist(UseTicketVO useTicketVO)throws Exception;
	
	public long getTotalTicketCount (UseTicketVO useTicketVO)throws Exception;
	
	public long checkEpGet (Map param)throws Exception;
	public long SelectEachEpNum(Map param)throws Exception;
}
