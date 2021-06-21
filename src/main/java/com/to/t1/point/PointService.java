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
	
	//포인트 충전 para :pointVO , MAP<string,Object> return : pointVO, eachEpVO , int status 
	public void chargePoint() {
		//1. 전달받은 map데이터 파싱하기 
		//2. 충전이므로, point는 parseInt시키기
		
		//3. 포인트 충전,내역작성하기 
		//4. 성공시 받아 놓은 다음 경로 반환하기 
	}
	//소장권 구매 == 포인트 사용  
	public void getTicket() {
		//1. 전달받은 티켓박스 데이터 파싱하기
		//2. 이미 소장권 구매 경험이 있는지 조사,(toonNum과 username으로 검색하기)
		//3. 0인 경우, -> insert하기 
		//4 0이 아닌 경우 -> update 하기 
		//5. point를 음수로 저장하고 stock * 200  포인트 사용내역 작성하기 
	}
	//소장권 사용
	public void useTicket() {
		//1. ticketBox.stock이 존재하는지? 없으면 0 return, controller 반환하기  
		//2. stock이 1개 이상이면 티켓 사용하기
		//3. useTicket 내역 작성하기 () 
	}
}
