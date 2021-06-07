package com.to.t1.member;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.tools.JavaFileManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.Errors;
import org.springframework.web.multipart.MultipartFile;

import com.to.t1.member.MemberVO;
import com.to.t1.util.FileManager;

@Service
public class MemberService implements UserDetailsService {

	@Autowired
	private MemberMapper memberMapper;
	
	@Autowired
	private FileManager fileManager;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		MemberVO memberVO = new MemberVO();
		memberVO.setUsername(username);
		System.out.println("로그인 시도");
		memberVO = memberMapper.getLogin(memberVO);
		System.out.println("로그인 시도!!!!!!!!!!!!!!!");
		return memberVO;
	}
	
	public boolean memberError(MemberVO memberVO, Errors errors)throws Exception{
		boolean result = false;
		
		result = errors.hasErrors();
//		if(!memberVO.getPassword().equals(memberVO.getPassword1())) {
//			errors.rejectValue("password1", "memberVO.password.notEqual");
//			result=true;
//		}
		
		MemberVO checkMember = memberMapper.getUsername(memberVO);
		if(checkMember !=null) {
			errors.rejectValue("username", "member.id.equal");
			errors.rejectValue("username", "member.name.equal");
			result = true;
		}
		
		return result;	
	}
	
	public MemberVO getUsername(MemberVO memberVO)throws Exception{
		return memberMapper.getUsername(memberVO);
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int setJoin(MemberVO memberVO, MultipartFile multipartFile, HttpSession session)throws Exception{
		
		//0. 사전 작업
		//a. password 암호화
		memberVO.setPassword(passwordEncoder.encode(memberVO.getPassword()));
		//b. 사용자 계정 활성화
		memberVO.setEnabled(true);

		//1. Member Table 저장
		int result =memberMapper.setJoin(memberVO);
				
		//2. Role Table 저장
		Map<String, String> map = new HashMap<String, String>();
		map.put("username", memberVO.getUsername());
		map.put("roleName", "ROLE_MEMBER");
		result = memberMapper.setMemberRole(map);
		
		String filePath= "upload/member/";
		if(multipartFile.getSize() != 0) {
			
			String fileName= fileManager.save(multipartFile, filePath);
			System.out.println(fileName);
			JoinFileVO joinFileVO = new JoinFileVO();
			joinFileVO.setFileName(fileName);
			joinFileVO.setOriName(multipartFile.getOriginalFilename());
			joinFileVO.setUsername(memberVO.getUsername());
			result = memberMapper.setJoinFile(joinFileVO);
		}
		return result;
	}

//	public MemberVO getLogin(MemberVO memberVO)throws Exception{
//		return memberMapper.getLogin(memberVO);
//	}

	public int memberUpdate(MemberVO memberVO)throws Exception{
		return memberMapper.memberUpdate(memberVO);
	}
	
//	public int memberDelete(MemberVO memberVO)throws Exception{
//		return memberMapper.memberDelete(memberVO);
//	}
	
	public int memberDelete(MemberVO memberVO, HttpSession session)throws Exception{
		JoinFileVO joinFileVO = memberMapper.getJoinFile(memberVO);
		System.out.println(joinFileVO);	
		System.out.println(joinFileVO.getFileName());
	
		boolean check = fileManager.delete("member", joinFileVO.getFileName(), session);
		return memberMapper.memberDelete(memberVO);
	}
	
	public MemberVO searchId(MemberVO memberVO)throws Exception{
		return memberMapper.searchId(memberVO);
	}
	
	public MemberVO searchPw(MemberVO memberVO)throws Exception{
		return memberMapper.searchPw(memberVO);
	}
	
	public int pwUpdate(MemberVO memberVO)throws Exception{
		System.out.println("zzzz");
		return memberMapper.pwUpdate(memberVO);
	}
	
}
