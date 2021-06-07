package com.to.t1.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Bean
	public PasswordEncoder passwordEncoder()throws Exception{
		return new BCryptPasswordEncoder();
	}
	
	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring()
		.antMatchers("/resources/**")	
		.antMatchers("/images/**")
		.antMatchers("/css/**")
		.antMatchers("/settingJs/**")
		.antMatchers("/js/**")

		//무시해야하는거 추가해줘야함
		.antMatchers("/vendor/**")
		.antMatchers("/favicon/**")
		;
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		// url에 따른 로그인, 권한 설정
		http
		.cors().and()
		.csrf().disable()
		.authorizeRequests()
		.antMatchers("/").permitAll()

		.antMatchers("member/memberJoinCheck").permitAll()
		.antMatchers("/member/**").hasAnyRole("ADMIN", "MEMBER")
		.anyRequest().authenticated()
		.and()
		.formLogin()
		.loginPage("/member/login")
		.defaultSuccessUrl("/member/memberLoginResult")
		.permitAll()
		.and()


		.authorizeRequests()
		.antMatchers("/")
		.permitAll() //누구나 허용


		.antMatchers("/member")
		.authenticated() //로그인한 유저만 허용
		.antMatchers("/admin")
		.hasRole("ADMIN") //로그인한 유정중 admin만
		;

	}

}
