package com.to.t1.toon;

import com.to.t1.member.MemberVO;

import lombok.Data;

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
	private MemberVO memberVO;
	private String nickname;
	
}