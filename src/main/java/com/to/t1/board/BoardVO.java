package com.to.t1.board;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardVO {
	
	private Long boNum;
	private String noticeKinds;
	private String noticeTitle;
	private String username;
	private String noticeContents;
	private Date createdDate;
	private Long noticeHit;
	
	private String qnaTitle;
	private String qnaContents;
	private Long qnaHit;
	
	public String getQnaTitle() {
		return qnaTitle;
	}
	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}
	public String getQnaContents() {
		return qnaContents;
	}
	public void setQnaContents(String qnaContents) {
		this.qnaContents = qnaContents;
	}
	public Long getQnaHit() {
		return qnaHit;
	}
	public void setQnaHit(Long qnaHit) {
		this.qnaHit = qnaHit;
	}
	public Long getBoNum() {
		return boNum;
	}
	public void setBoNum(Long boNum) {
		this.boNum = boNum;
	}
	public String getNoticeKinds() {
		return noticeKinds;
	}
	public void setNoticeKinds(String noticeKinds) {
		this.noticeKinds = noticeKinds;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getNoticeContents() {
		return noticeContents;
	}
	public void setNoticeContents(String noticeContents) {
		this.noticeContents = noticeContents;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	public Long getNoticeHit() {
		return noticeHit;
	}
	public void setNoticeHit(Long noticeHit) {
		this.noticeHit = noticeHit;
	} 
	
}
