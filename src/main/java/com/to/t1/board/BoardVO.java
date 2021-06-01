package com.to.t1.board;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardVO {
	
	private Long boNum;
	private String ntKinds;
	private String title;
	private String writer;
	private String contents;
	private Date regDate;
	private Long hit;
	
	public Long getBoNum() {
		return boNum;
	}
	public void setBoNum(Long boNum) {
		this.boNum = boNum;
	}
	public String getNtKinds() {
		return ntKinds;
	}
	public void setNtKinds(String ntKinds) {
		this.ntKinds = ntKinds;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Long getHit() {
		return hit;
	}
	public void setHit(Long hit) {
		this.hit = hit;
	}
	
	
	
	
}
