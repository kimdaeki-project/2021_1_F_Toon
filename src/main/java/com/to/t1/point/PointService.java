package com.to.t1.point;

import java.util.List;
import java.util.Map;
import java.lang.Long;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.to.t1.member.MemberVO;
import com.to.t1.ticket.TicketBoxVO;
import com.to.t1.ticket.UseTicketVO;
import com.to.t1.util.Pager;

@Service
public class PointService {
	
	@Autowired
	private PointMapper pointMapper;
	
	//포인트 충전 para :pointVO , MAP<string,Object> return : pointVO, eachEpVO , int status 
	public int chargePoint(@RequestParam Map<String,Object> param) throws Exception {
		PointVO pointVO = new PointVO();
		int result = 0;
		//1. 전달받은 map데이터 파싱하기 
		//2. 충전이므로, point는 parseInt시키기
		String username = (String)param.get("username");
		long point = (long)param.get("point"); //산술 연산을 위해서 양의 long으로 변환
		
		pointVO.setUsername(username);
		pointVO.setPoint(point);
		pointVO.setContents("포인트충전:" + point +"P");
		
		//3.포인트 충전하기,내역작성하기 
		result= pointMapper.setMyPointcount(pointVO);
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
	//포인트 사용내역 조회
	public List<PointVO> getPointList(MemberVO memberVO)throws Exception {
		return pointMapper.getMyPointList(memberVO);
	}
	
	//소장권 사용내역 조회 : toon 상관 없이 조회(리스트)
	public List<UseTicketVO> getUseTicketList(MemberVO memberVO)throws Exception {
		return pointMapper.getUseTicktList(memberVO);
	}
	//UseTicket을 위한 조회 : toonNum과 username으로 조회
	public List<UseTicketVO> getToonTicktList(UseTicketVO useTicketVO, Pager pager)throws Exception{
		
		pager.makeRow();
		Long totalCount = pointMapper.getTotalTicketCount(useTicketVO);
		pager.makeNum(totalCount);
		
		return pointMapper.getToonTicktList(useTicketVO);
	}
	
	
}
