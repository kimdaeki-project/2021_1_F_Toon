package com.to.t1.ticket;

import lombok.Data;

@Data
public class TicketBoxVO {
	
	private String username;
	private long toonNum; //Toon Num
	private int stock; //보유 소장권 갯수
	
}
