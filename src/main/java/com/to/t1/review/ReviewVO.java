package com.to.t1.review;



import java.sql.Date;

import lombok.Data;

@Data
public class ReviewVO {

	private long revNum;
	private long toonNum;
	private long epNum;
	private String username;
	private long rating;
	private String comments;
	private Date commentDate;
	
}
