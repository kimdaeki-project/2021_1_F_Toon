package com.to.t1.mypage;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class RecentVO {

	private String username;
	private long toonNum;
	private long epNum;
	private Timestamp viewDate;
	
}
