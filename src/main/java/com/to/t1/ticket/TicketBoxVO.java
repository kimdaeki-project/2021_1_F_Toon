package com.to.t1.ticket;

import lombok.Data;

@Data
public class TicketBoxVO {
	
	private String username;
	private long toonNum; //Toon Num
	private int stock; //보유 소장권 갯수
	

	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public long getToonNum() {
		return toonNum;
	}
	public void setToonNum(long toonNum) {
		this.toonNum = toonNum;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	
	
}
