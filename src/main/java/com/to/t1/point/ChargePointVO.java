package com.to.t1.point;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ChargePointVO {
	
	private String username;
	private long point;
	private Timestamp cDate; 
	
}