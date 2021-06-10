package com.to.t1.point;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.to.t1.member.MemberVO;

@Mapper
public interface PointMapper {
	
	public List<ChargePointVO> getMyChargeList(MemberVO memberVO) throws Exception;
	
	public int setChargePoint(ChargePointVO chargePointVO)throws Exception;
	public int setChargePointList(ChargePointVO chargePointVO)throws Exception;
	public int setUsePoint(UsePointVO usePointVO)throws Exception;
	public int setUsePointList(UsePointVO usePointVO)throws Exception;
	
	public List<UsePointVO> getMyUseList(MemberVO memberVO)throws Exception;
	
}
