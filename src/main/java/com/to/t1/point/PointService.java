package com.to.t1.point;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.to.t1.member.MemberVO;

@Service
public class PointService {
	
	@Autowired
	private PointMapper pointMapper;
	
	//포인트 충전 
	public int ChargePoint(@RequestParam Map<String, Object> param)throws Exception {
		
		int result =0;
		//포인트 충전과 내역 작성 
		
		//Json 데이터 가공하기 
		PointVO chargePointVO = new PointVO();
		String username = (String) param.get("username");
		String spoint = (String)param.get("point");
		long point = Integer.parseInt(spoint);
		
		chargePointVO.setUsername(username);
		chargePointVO.setPoint(point);
		chargePointVO.setContents("충전 ");
		
		result = pointMapper.setChargePoint(chargePointVO);
		result = pointMapper.setPointList(chargePointVO);
		
		return result;
	}
	//포인트 사용()
	public int UsePoint(MemberVO memberVO,PointVO usePointVO) throws Exception{
		int result= 0;
		
		return result;
	}
	
	//회원 충전내역 조회
	public List<PointVO> SelectMyChargeList (MemberVO memberVO)throws Exception{
		return pointMapper.getMyChargeList(memberVO);
	}
	//회원 소장권 구입내역 조회
	public List<PointVO> SelectMyPointUseList (MemberVO memberVO)throws Exception{
		return pointMapper.getMyUseList(memberVO);
	}
	
}
