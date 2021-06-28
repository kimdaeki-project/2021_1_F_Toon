package com.to.t1.ticket;

import java.sql.Timestamp;

import com.to.t1.toon.ToonVO;
import com.to.t1.toon.eachep.EachEpVO;

import lombok.Data;

@Data
public class UseTicketVO {
	
	private String username;
	private long epNum;
	private long toonNum;
	private Timestamp utDate;
	private long sort;
	
}
