package com.to.t1.point;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ChargePointVO {
	
	private long orderNum;
	private String userName;
	private long toonNum;
	private long usePoint;
	private long totalcount;
	private Timestamp orderTime; //orderTime
	
}