package com.to.t1.security;

import java.io.IOException;

import javax.security.auth.login.AccountExpiredException;
import javax.security.auth.login.CredentialExpiredException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.event.AuthenticationCredentialsNotFoundEvent;
import org.springframework.security.authentication.AuthenticationCredentialsNotFoundException;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;

//로그인 실패 했을 때 실행 하는 객체
@Component
public class LoginFail implements AuthenticationFailureHandler {

	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		// TODO Auto-generated method stub
		System.out.println("Login Fail Handler");
		System.out.println(exception.getClass());
		
		String errorClass=exception.getClass().toString().substring(exception.getClass().toString().lastIndexOf(".")+1);
		
		System.out.println(errorClass);
		
		String message="";
		
		
		switch(errorClass) {
		case "InternalAuthenticationServiceException":
			message="ID가 존재 하지 않음";
			break;
		case "BadCredentialsException":
			message="비번이 틀림";
			break;
		case "AuthenticationCredentialsNotFoundException":
			message="인증이 안됌";
			break;
		case "LockedException":
			message="계정 잠김";
			break;
			
		case "DisabledException":
			message="휴면계정";
			break;
		case "AccountExpiredException":
			message="계정 유효 기간 만료";
			break;
			
		case "CredentialExpiredException":
			message="비번 유효 기간 만료";
			break;	
		
		default:
			message="다시 시도";
		}
	
		System.out.println(message);
		
		request.setAttribute("message", message);
		request.getRequestDispatcher("/member/memberLogin?error").forward(request, response);
		
	}
}