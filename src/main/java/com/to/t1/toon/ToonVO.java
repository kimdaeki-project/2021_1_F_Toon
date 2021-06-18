package com.to.t1.toon;


import java.util.List;

import com.to.t1.member.MemberVO;
import com.to.t1.toon.eachep.EachEpVO;

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
	private String nickname;
	private String search;
	
	private List<EachEpVO> eachEpVO;
	
	
}
