package com.to.t1.member;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.to.t1.member.MemberVO;

import lombok.Data;

@Data
public class MemberVO implements UserDetails {
	

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
	
	private boolean enabled;
	
	private List<RoleVO> roles;
	
	
	//Role 저장
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		
		for(RoleVO roleVO:this.roles) {
			authorities.add(new SimpleGrantedAuthority(roleVO.getRoleName()));
		}
		
		return authorities;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}
	
	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	
	
	
}
