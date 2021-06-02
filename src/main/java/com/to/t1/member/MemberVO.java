package com.to.t1.member;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.to.t1.member.MemberVO;

import lombok.Data;

@Data
public class MemberVO {
	@Size(min=6)
	@NotEmpty
	private String username;
	
	@Size(min=8)
	@NotEmpty
	private String password;
	
	@NotEmpty
	private String name;
	
	@NotEmpty
	private String nickname;
	
	@NotEmpty(message = "- 제외하고 입력하세요")
	private String phone;
	@NotEmpty
	@Email
	private String email;
	private long point;
	private JoinFileVO joinFileVO;
}
