package com.to.t1.review;



import java.sql.Date;

import lombok.Data;

@Data
public class ReviewVO {

	private long revNum;
	private long toonNum;
	private long epNum;
	private String username;
	private long rating;
	private String comments;
	private Date commentDate;
	
	
	public long getRevNum() {
		return revNum;
	}
	public void setRevNum(long revNum) {
		this.revNum = revNum;
	}
	public long getToonNum() {
		return toonNum;
	}
	public void setToonNum(long toonNum) {
		this.toonNum = toonNum;
	}
	public long getEpNum() {
		return epNum;
	}
	public void setEpNum(long epNum) {
		this.epNum = epNum;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public long getRating() {
		return rating;
	}
	public void setRating(long rating) {
		this.rating = rating;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public Date getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}
	
	
	
}
