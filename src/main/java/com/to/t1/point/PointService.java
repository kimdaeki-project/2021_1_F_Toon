package com.to.t1.point;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.to.t1.member.MemberVO;

@Service
public class PointService {
	
	@Autowired
	private PointMapper pointMapper;
	
	//포인트 충전 
	public int ChargePoint(ChargePointVO chargePointVO)throws Exception {
		int result =0;
		//포인트 충전과 내역 작성 
		result = pointMapper.setChargePoint(chargePointVO);
		result = pointMapper.setChargePointList(chargePointVO);
		return result;
	}
	//포인트 사용()
	public int UsePoint(MemberVO memberVO,UsePointVO usePointVO) throws Exception{
		
		int result = 0;
		//현재 내 포인트 조회하기 
		if(memberVO.getPoint() < usePointVO.getEpPrice()) {
			//포인트가 모자른 경우 : 결제 유도
			result = 3; 
		}else {
			//충분한 경우 : 사용하기 
			result = pointMapper.setUsePoint(usePointVO);
			result = pointMapper.setUsePointList(usePointVO);
		}
		return result;
	}
	//내 충전내역 조회
	public List<ChargePointVO> SelectMyChargeList (MemberVO memberVO)throws Exception{
		return pointMapper.getMyChargeList(memberVO);
	}
	//내 사용내역 조회
	public List<UsePointVO> SelectMyPointUseList (MemberVO memberVO)throws Exception{
		return pointMapper.getMyUseList(memberVO);
	}
	
	
}
