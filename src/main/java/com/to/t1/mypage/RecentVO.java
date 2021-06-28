package com.to.t1.mypage;

import java.sql.Timestamp;

import com.to.t1.favoriteToon.FavoritetoonVO;
import com.to.t1.member.MemberVO;
import com.to.t1.point.UsePointVO;
import com.to.t1.ticket.UseTicketVO;
import com.to.t1.toon.ToonVO;
import com.to.t1.toon.eachep.EachEpVO;

import lombok.Data;

@Data
public class RecentVO {
	private long recNum;
	private String username;
	private long toonNum;
	private long epNum;
	private Timestamp viewDate;
	
	private ToonVO toonVO;
	private EachEpVO eachEpVO;
	private MemberVO memberVO;
	private FavoritetoonVO favoritetoonVO;
	private UseTicketVO useTicketVO;
	private UsePointVO usePointVO;
}
