package com.to.t1.mypage;

import java.sql.Timestamp;

import com.to.t1.member.MemberVO;
import com.to.t1.toon.ToonVO;
import com.to.t1.toon.eachep.EachEpVO;

import lombok.Data;

@Data
public class FavoritetoonVO {

	private long toonNum;
	private String username;
	private long likeClick;
	private Timestamp likeDate;
	//확인
}
