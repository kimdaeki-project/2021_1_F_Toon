package com.to.t1.ticket;

import com.to.t1.member.MemberVO;

import lombok.Data;

@Data
public class TicketBoxVO {
	
	private String username;
	private long toonNum;
	private long stock;
	
	private long sort;
	private MemberVO memberVO;
}
