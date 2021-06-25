  
package com.to.t1.toon.eachep;

import java.sql.Date;
import java.util.List;

import com.to.t1.review.ReviewVO;
import com.to.t1.ticket.UseTicketVO;

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
	private List<ReviewVO> reviewVO;
	private UseTicketVO useTicketVO;
}