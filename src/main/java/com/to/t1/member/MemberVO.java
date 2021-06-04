package com.to.t1.member;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.to.t1.member.MemberVO;

import lombok.Data;

@Data
public class MemberVO {
	@Size(min=6, max=15, message ="아이디는 6글자에서 15글자 사이로 입력하세요")
	@NotEmpty
	private String username;

	@Size(min=8, max=15, message ="비밀번호는 8글자에서 15글자 사이로 입력하세요")
	@NotEmpty
	private String password;
	
	@NotEmpty
	private String name;
	
	@NotEmpty
	private String nickname;
	
	@NotEmpty
	private String phone;
	@NotEmpty
	@Email
	private String email;
	
	@NotEmpty
	private String emailNum;
	
	private long point;
	private JoinFileVO joinFileVO;
}
