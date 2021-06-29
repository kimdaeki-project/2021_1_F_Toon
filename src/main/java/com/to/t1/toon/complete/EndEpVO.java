package com.to.t1.toon.complete;

import java.sql.Date;
import com.to.t1.ticket.UseTicketVO;

import lombok.Data;

@Data
public class EndEpVO {
	
	//eachEP table과 구성이 동일하다.
	private long epNum;
	private long toonNum;
	private long eachEpNum;
	private String epSumImg;
	private String epTitle;
	private Date epDate;
	private String epContentImg;
	private long epHit;
	private long epRatingSum;
	private long epRatingPerson;	
	
	private UseTicketVO useTicketVO; // 한 화는 한 회원의 소장권 가진내역 하나와 has one 관계이다.

}
