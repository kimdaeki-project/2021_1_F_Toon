package com.to.t1.member.admin;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.to.t1.toon.ToonMapper;
import com.to.t1.toon.ToonVO;


@Service
public class AdminService {
	
	
	@Autowired
	private ToonMapper toonMapper;
	
	//1. 온갖 테이블 조회(맴버/작가/작품/매출)
	
	//2. 작품 관련 (작품 입력, 수정본 승인 하기)
	public long setInsertToon(ToonVO toonVO,HttpSession session) throws Exception {
		long result = toonMapper.setInsertToon(toonVO);
		System.out.println(result);
		return result;
	}
	//3. 작가 승인/삭제 (= 수정과 삭제)
	
	//4. 매출 관리 (내역 열람하기) 
	
}
