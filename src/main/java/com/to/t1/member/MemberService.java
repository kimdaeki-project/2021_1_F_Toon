package com.to.t1.member;

import javax.servlet.http.HttpSession;
import javax.tools.JavaFileManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.to.t1.util.FileManager;

@Service
public class MemberService {

	@Autowired
	private MemberMapper memberMapper;
	
	@Autowired
	private FileManager fileManager;

	public int setJoin(MemberVO memberVO, MultipartFile multipartFile, HttpSession session)throws Exception{
		int result = memberMapper.setJoin(memberVO);
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
		System.out.println("service");
		return result;
			
	}

	public MemberVO getLogin(MemberVO memberVO)throws Exception{
	
		//MemberFileDTO memberFileDTO = memberDAO.memberLoginFile(memberDTO);
		//memberDTO.setMemberFileDTO(memberFileDTO);
	
		return memberMapper.getLogin(memberVO);
	}


}
