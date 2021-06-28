package com.to.t1.point;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.awt.Point;
import java.lang.Long;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import com.to.t1.member.MemberVO;
import com.to.t1.ticket.TicketBoxVO;
import com.to.t1.ticket.UseTicketVO;
import com.to.t1.toon.eachep.EachEpMapper;
import com.to.t1.toon.eachep.EachEpVO;
import com.to.t1.util.Pager;

@Service
public class PointService {
	
	@Autowired
	private PointMapper pointMapper;
	
	@Autowired
	private EachEpMapper eachEpMapper;
	//포인트 충전 para :pointVO , MAP<string,Object> return : pointVO, eachEpVO , int status 
	public int chargePoint(@RequestBody Map<String,String> param) throws Exception {
		
		String username = (String)param.get("username");
		long point = Long.parseLong(param.get("point"));
		String contents = (String)param.get("contents");
		
		System.out.println("username" + username);
		System.out.println("point" + point);
		System.out.println("contents" + contents);
		
		PointVO pointVO = new PointVO();
		pointVO.setUsername(username);
		pointVO.setPoint(point);
		pointVO.setContents(contents);
		System.out.println(pointVO);
		//3.포인트 충전하기,내역작성하기 
		int result= pointMapper.setMyPointcount(pointVO);
		result=pointMapper.setMyPointList(pointVO); 
		//4. 성공시 받아 놓은 다음 경로 반환하기  
		if(result !=0) {
			
			return result;
		}
		else {
			System.out.println("입력실패");
			return result;
		}
	}
	
	//소장권 구매 == 포인트 사용  
	public int getTicket(PointVO pointVO,TicketBoxVO ticketBoxVO, int isAlready) throws Exception{
		int result;
		
		long negativepoint = pointVO.getPoint();
		negativepoint = -1 * negativepoint; 
		pointVO.setPoint(negativepoint);//음수화
		
		//3.포인트 사용하기,내역작성하기, 티켓 추가하기 
		result= pointMapper.setMyPointcount(pointVO);
		result= pointMapper.setMyPointList(pointVO);
		if(isAlready == 0) {//이력이 없다면 있으면 insert
			result = pointMapper.insertTicketStock(ticketBoxVO);
		}else {//이력이 있다면 Update
			result = pointMapper.updateTicketStock(ticketBoxVO);
		}
		return result;
	}
	//소장권 사용
	public int useTicket(TicketBoxVO ticketBoxVO,UseTicketVO useTicketVO,String NextPath)throws Exception{
		
		//소장권 사용 내역 작성 
		useTicketVO.setSort(1); //일단은 소장권으로
		ticketBoxVO.setStock(-1); //차감하는 티켓 장수 
		int result = pointMapper.setTicketUselist(useTicketVO);//사용내역 작성
		result = pointMapper.updateTicketStock(ticketBoxVO);//티켓 한개 차감 
		
		return result;
	}
	//티켓박스 조회 : 
	//null 과 not null 구분 
	public long checkTicketBox(TicketBoxVO ticketBoxVO) throws Exception {
		return pointMapper.checkTicketBox(ticketBoxVO);
	}
	//티켓박스 정보 가져오기 
	public TicketBoxVO checkTicketStock(@RequestParam Map<String,Object> param,TicketBoxVO ticketBoxVO) throws Exception{
		
		String username= (String)param.get("username");
		long toonNum = Long.parseLong((String)param.get("toonNum"));
		
		ticketBoxVO.setUsername(username);
		ticketBoxVO.setToonNum(toonNum);
		ticketBoxVO.setSort(1);
		ticketBoxVO = pointMapper.checkTicketStock(ticketBoxVO);
		return ticketBoxVO;
	}
	//포인트 충전내역 조회
	public List<PointVO> getMyChargePointList(MemberVO memberVO, Pager pager)throws Exception {
		HashMap<String, Object> obj = new HashMap<String, Object>();
		
		obj.put("memberVO", memberVO);
		obj.put("pager", pager);
		
		pager.makeRow(); 
		Long totalCount = pointMapper.getTotalCount1(obj);
		System.out.println("totalcount : "+totalCount);
		pager.makeNum(totalCount); 
		
		return pointMapper.getMyChargePointList(obj);
	}
	
	//포인트 사용내역 조회
	public List<PointVO> getMyUsePointList(MemberVO memberVO, Pager pager)throws Exception {
		HashMap<String, Object> obj = new HashMap<String, Object>();
		
		obj.put("memberVO", memberVO);
		obj.put("pager", pager);
		
		pager.makeRow(); 
		Long totalCount = pointMapper.getTotalCount2(obj);
		System.out.println("totalcount : "+totalCount);
		pager.makeNum(totalCount); 
		
		return pointMapper.getMyUsePointList(obj);
	}
	
	//소장권 사용내역 조회 : toon 상관 없이 조회(리스트)
	public List<PointVO> getUseTicketList(MemberVO memberVO, Pager pager)throws Exception {
		HashMap<String, Object> obj = new HashMap<String, Object>();
		
		obj.put("memberVO", memberVO);
		obj.put("pager", pager);
		
		pager.makeRow();
		Long totalCount = pointMapper.getTotalCount4(obj);
		pager.makeNum(totalCount);
		
		return pointMapper.getUseTicktList(obj);
	}
	
	//UseTicket을 위한 조회 : toonNum과 username으로 조회
	public List<PointVO> getToonTicktList(MemberVO memberVO, Pager pager)throws Exception{
		HashMap<String, Object> obj = new HashMap<String, Object>();
		
		obj.put("memberVO", memberVO);
		obj.put("pager", pager);
		
		pager.makeRow();
		Long totalCount = pointMapper.getTotalCount3(obj);
		pager.makeNum(totalCount);
		
		return pointMapper.getToonTicktList(obj);
	}
	
	public List<EachEpVO> getEplistwithUT (UseTicketVO useTicketVO)throws Exception{
		return eachEpMapper.getEplistwithUT(useTicketVO);
	}
}
