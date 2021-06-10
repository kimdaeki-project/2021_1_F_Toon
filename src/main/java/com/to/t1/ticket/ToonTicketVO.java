package com.to.t1.ticket;

import com.to.t1.toon.ToonVO;

import lombok.Data;

@Data
public class ToonTicketVO {
//이용권 보유내역 
	private long username;
	private long toonNum;
	private long count;
	
	private ToonVO toonVO;
	
}
