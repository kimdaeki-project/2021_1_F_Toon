package com.to.t1.temp;

import lombok.Data;
// 작품 추가를 위한 Table

@Data
public class ToonVO {
	
	private long toonNum;
	private String toonTitle;
	private String genre;
	private String writerID;
	private String toonSum;
	private long totalHit;
	private String toonDay;
	private String state;
	private String titleImg;
	private long ratingSum;
	private long ratingPerson;
}
