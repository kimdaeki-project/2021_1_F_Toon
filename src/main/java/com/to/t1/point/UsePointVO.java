package com.to.t1.point;

import java.sql.Timestamp;

import com.to.t1.member.MemberVO;
import com.to.t1.toon.ToonVO;
import com.to.t1.toon.eachep.EachEpVO;

import lombok.Data;

//@Data
public class UsePointVO {
   
   //티켓 사용 내역 usePoint table 기본 내용
   private long toonNum;
   private long username;
   private long epNum;
   private int epPrice;
   private Timestamp useDate;
   
   private ToonVO toonVO;
   private EachEpVO eachEpVO;
   private MemberVO memberVO;
   //join하면서 추가로 저장되는 부분
//   private String toonTitle;
//   private String epTitle;
//   private long eachEpNum;
//   private long toonNum;
//   
//   private String epSumImg;
//   private String nickname;
public long getToonNum() {
	return toonNum;
}
public void setToonNum(long toonNum) {
	this.toonNum = toonNum;
}
public long getUsername() {
	return username;
}
public void setUsername(long username) {
	this.username = username;
}
public long getEpNum() {
	return epNum;
}
public void setEpNum(long epNum) {
	this.epNum = epNum;
}
public int getEpPrice() {
	return epPrice;
}
public void setEpPrice(int epPrice) {
	this.epPrice = epPrice;
}
public Timestamp getUseDate() {
	return useDate;
}
public void setUseDate(Timestamp useDate) {
	this.useDate = useDate;
}
public ToonVO getToonVO() {
	return toonVO;
}
public void setToonVO(ToonVO toonVO) {
	this.toonVO = toonVO;
}
public EachEpVO getEachEpVO() {
	return eachEpVO;
}
public void setEachEpVO(EachEpVO eachEpVO) {
	this.eachEpVO = eachEpVO;
}
public MemberVO getMemberVO() {
	return memberVO;
}
public void setMemberVO(MemberVO memberVO) {
	this.memberVO = memberVO;
}
   
   
}