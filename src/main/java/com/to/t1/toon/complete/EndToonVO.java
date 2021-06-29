package com.to.t1.toon.complete;

import lombok.Data;

@Data
public class EndToonVO {
	//Toon table과 구성이 동일하다.
	
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
	private String search;
	private String username;
	
}
