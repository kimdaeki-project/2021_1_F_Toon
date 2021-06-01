package com.to.t1.member;

import com.to.t1.member.MemberVO;

import lombok.Data;

@Data
public class MemberVO {

	private String username;
	private String password;
	private String name;
	private String nickname;
	private String phone;
	private String email;
	private long point;
	private JoinFileVO joinFileVO;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPoint() {
		return point;
	}
	public void setPoint(long point) {
		this.point = point;
	}
	public JoinFileVO getJoinFileVO() {
		return joinFileVO;
	}
	public void setJoinFileVO(JoinFileVO joinFileVO) {
		this.joinFileVO = joinFileVO;
	}
	
	
}
