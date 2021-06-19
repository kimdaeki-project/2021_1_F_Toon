package com.to.t1.point;

import java.sql.Timestamp;

import com.to.t1.member.MemberVO;
import com.to.t1.toon.ToonVO;
import com.to.t1.toon.eachep.EachEpVO;

import lombok.Data;

@Data
public class PointVO {
	
	private String username;
	private long point;
	private Timestamp cDate; 
	private String contents;
	
	private ToonVO toonVO;
	private EachEpVO eachEpVO;
	private MemberVO memberVO;
	
}