package com.to.t1.board.notice;

import java.sql.Date;
import java.util.List;

import com.to.t1.board.BoardFileVO;
import com.to.t1.board.BoardVO;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=false)
public class NoticeVO extends BoardVO {

	private List<BoardFileVO> files;

	@Override
	public String getQnaTitle() {
		// TODO Auto-generated method stub
		return super.getQnaTitle();
	}

	@Override
	public void setQnaTitle(String qnaTitle) {
		// TODO Auto-generated method stub
		super.setQnaTitle(qnaTitle);
	}

	@Override
	public String getQnaContents() {
		// TODO Auto-generated method stub
		return super.getQnaContents();
	}

	@Override
	public void setQnaContents(String qnaContents) {
		// TODO Auto-generated method stub
		super.setQnaContents(qnaContents);
	}

	@Override
	public Long getQnaHit() {
		// TODO Auto-generated method stub
		return super.getQnaHit();
	}

	@Override
	public void setQnaHit(Long qnaHit) {
		// TODO Auto-generated method stub
		super.setQnaHit(qnaHit);
	}

	@Override
	public Long getBoNum() {
		// TODO Auto-generated method stub
		return super.getBoNum();
	}

	@Override
	public void setBoNum(Long boNum) {
		// TODO Auto-generated method stub
		super.setBoNum(boNum);
	}

	@Override
	public String getNoticeKinds() {
		// TODO Auto-generated method stub
		return super.getNoticeKinds();
	}

	@Override
	public void setNoticeKinds(String noticeKinds) {
		// TODO Auto-generated method stub
		super.setNoticeKinds(noticeKinds);
	}

	@Override
	public String getNoticeTitle() {
		// TODO Auto-generated method stub
		return super.getNoticeTitle();
	}

	@Override
	public void setNoticeTitle(String noticeTitle) {
		// TODO Auto-generated method stub
		super.setNoticeTitle(noticeTitle);
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return super.getUsername();
	}

	@Override
	public void setUsername(String username) {
		// TODO Auto-generated method stub
		super.setUsername(username);
	}

	@Override
	public String getNoticeContents() {
		// TODO Auto-generated method stub
		return super.getNoticeContents();
	}

	@Override
	public void setNoticeContents(String noticeContents) {
		// TODO Auto-generated method stub
		super.setNoticeContents(noticeContents);
	}

	@Override
	public Date getCreatedDate() {
		// TODO Auto-generated method stub
		return super.getCreatedDate();
	}

	@Override
	public void setCreatedDate(Date createdDate) {
		// TODO Auto-generated method stub
		super.setCreatedDate(createdDate);
	}

	@Override
	public Long getNoticeHit() {
		// TODO Auto-generated method stub
		return super.getNoticeHit();
	}

	@Override
	public void setNoticeHit(Long noticeHit) {
		// TODO Auto-generated method stub
		super.setNoticeHit(noticeHit);
	}

	@Override
	public Long getNoticeType() {
		// TODO Auto-generated method stub
		return super.getNoticeType();
	}

	@Override
	public void setNoticeType(Long noticeType) {
		// TODO Auto-generated method stub
		super.setNoticeType(noticeType);
	}

	@Override
	protected Object clone() throws CloneNotSupportedException {
		// TODO Auto-generated method stub
		return super.clone();
	}

	@Override
	protected void finalize() throws Throwable {
		// TODO Auto-generated method stub
		super.finalize();
	}
	
}
