package com.to.t1.toon.eachep;

import java.sql.Date;

import lombok.Data;

@Data
public class EachEpVO {

	private long epNum;
	private long toonNum;
	private long eachEpNum;
	private String epSumImg;
	private String epTitle;
	private Date epDate;
	private String epContentImg;
	private long epHit;
	private long epRatingSum;
	private long epRatingPerson;
	
	
	public long getEpNum() {
		return epNum;
	}
	public void setEpNum(long epNum) {
		this.epNum = epNum;
	}
	public long getToonNum() {
		return toonNum;
	}
	public void setToonNum(long toonNum) {
		this.toonNum = toonNum;
	}
	public long getEachEpNum() {
		return eachEpNum;
	}
	public void setEachEpNum(long eachEpNum) {
		this.eachEpNum = eachEpNum;
	}
	public String getEpSumImg() {
		return epSumImg;
	}
	public void setEpSumImg(String epSumImg) {
		this.epSumImg = epSumImg;
	}
	public String getEpTitle() {
		return epTitle;
	}
	public void setEpTitle(String epTitle) {
		this.epTitle = epTitle;
	}
	public Date getEpDate() {
		return epDate;
	}
	public void setEpDate(Date epDate) {
		this.epDate = epDate;
	}
	public String getEpContentImg() {
		return epContentImg;
	}
	public void setEpContentImg(String epContentImg) {
		this.epContentImg = epContentImg;
	}
	public long getEpHit() {
		return epHit;
	}
	public void setEpHit(long epHit) {
		this.epHit = epHit;
	}
	public long getEpRatingSum() {
		return epRatingSum;
	}
	public void setEpRatingSum(long epRatingSum) {
		this.epRatingSum = epRatingSum;
	}
	public long getEpRatingPerson() {
		return epRatingPerson;
	}
	public void setEpRatingPerson(long epRatingPerson) {
		this.epRatingPerson = epRatingPerson;
	}

}