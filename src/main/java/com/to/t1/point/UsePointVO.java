package com.to.t1.point;

import java.sql.Timestamp;

import com.to.t1.toon.eachep.EachEpVO;

import lombok.Data;

@Data
public class UsePointVO {
	
	//티켓 사용 내역 
	private long userName;
	private long epNum;
	private Timestamp useDate;
	
	//+구입한 에피소드 정보 추가하기
	private EachEpVO eachEpVO;
}
