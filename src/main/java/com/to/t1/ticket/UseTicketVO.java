package com.to.t1.ticket;

import java.sql.Timestamp;

import com.to.t1.toon.ToonVO;
import com.to.t1.toon.eachep.EachEpVO;

import lombok.Data;

@Data
public class UseTicketVO {
	
	private String username;
	private long epNum;
	private long toonNum;
	private Timestamp utDate;
	
	//타이틀 조회와 에피소드 조회용.
	private ToonVO toonVO;
	private EachEpVO eachEpVO;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
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
	public Timestamp getUtDate() {
		return utDate;
	}
	public void setUtDate(Timestamp utDate) {
		this.utDate = utDate;
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
	
	
	
}
