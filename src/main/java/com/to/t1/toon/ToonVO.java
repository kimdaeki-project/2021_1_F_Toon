package com.to.t1.toon;

import com.to.t1.member.MemberVO;

import lombok.Data;

@Data
public class ToonVO {

	private long toonNum;
	private String toonTitle;
	private String genre;
	private String writerId;
	private String toonSum;
	private long totalHit;
	private String toonDay;
	private String state;
	private String titleImg;
	private long ratingSum;
	private long ratingPerson;
	private MemberVO memberVO;
	private String nickname;
	
	
	public long getToonNum() {
		return toonNum;
	}
	public void setToonNum(long toonNum) {
		this.toonNum = toonNum;
	}
	public String getToonTitle() {
		return toonTitle;
	}
	public void setToonTitle(String toonTitle) {
		this.toonTitle = toonTitle;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	public String getToonSum() {
		return toonSum;
	}
	public void setToonSum(String toonSum) {
		this.toonSum = toonSum;
	}
	public long getTotalHit() {
		return totalHit;
	}
	public void setTotalHit(long totalHit) {
		this.totalHit = totalHit;
	}
	public String getToonDay() {
		return toonDay;
	}
	public void setToonDay(String toonDay) {
		this.toonDay = toonDay;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getTitleImg() {
		return titleImg;
	}
	public void setTitleImg(String titleImg) {
		this.titleImg = titleImg;
	}
	public long getRatingSum() {
		return ratingSum;
	}
	public void setRatingSum(long ratingSum) {
		this.ratingSum = ratingSum;
	}
	public long getRatingPerson() {
		return ratingPerson;
	}
	public void setRatingPerson(long ratingPerson) {
		this.ratingPerson = ratingPerson;
	}
	public MemberVO getMemberVO() {
		return memberVO;
	}
	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
}