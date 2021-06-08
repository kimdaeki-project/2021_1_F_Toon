package com.to.t1.ticket;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class OrderTicketVO {
	
	private long orderNum;
	private String userName;
	private long toonNum;
	private long usePoint;
	private long totalcount;
	private Timestamp orderTime;
	
}