package com.to.t1.member;

import java.util.List;

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
	
}
