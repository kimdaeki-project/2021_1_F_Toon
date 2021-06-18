package com.to.t1.point;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class PointVO {
	
	private String username;
	private long point;
	private Timestamp cDate; 
	private String contents;
	
}