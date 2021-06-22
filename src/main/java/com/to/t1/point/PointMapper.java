package com.to.t1.point;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.to.t1.member.MemberVO;

@Mapper
public interface PointMapper {
	
	
	//충전 
	public int setChargePoint(PointVO PointVO)throws Exception;
	public int setPointList(PointVO PointVO)throws Exception;
	
	//소장권-사용,구입전 소장권 갯수 조회 
	public long getTicketStock()throws Exception;
	
	//소장권 구입 
	public int setUsePoint(PointVO PointVO)throws Exception;
	public int setUsePointList(PointVO PointVO)throws Exception;
	
	//소장권 사용 -무조건 하나씩 사용한다
	
	//조회하기 (충전내역, 포인트 사용 내역)
	public List<PointVO> getMyChargeList(MemberVO memberVO) throws Exception;
	public List<PointVO> getMyUseList(MemberVO memberVO)throws Exception;
	
}
