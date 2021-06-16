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
}
