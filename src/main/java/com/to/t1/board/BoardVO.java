package com.to.t1.board;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardVO {
	
	private Long boNum;
	private String noticeKinds;
	private String noticeTitle;
	private String username;
	private String noticeContents;
	private Date createdDate;
	private Long noticeHit;
	private Long noticeType;
	
}
