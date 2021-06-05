package com.to.t1.util;

import java.io.File;
import java.util.UUID;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

@Component
public class BoFileManager {

	@Autowired
	private ResourceLoader resourceLoader;
	
	public boolean delete(String name,String fileName ,HttpSession session)throws Exception {
		//1. 경로 설정
//		String path = session.getServletContext().getRealPath("upload/"+name);
		
		String filePath= "upload/member/";
		filePath = "upload/notice/";
		
		String path="static";
		ClassPathResource classPathResource = new ClassPathResource(path);
		File file = new File(classPathResource.getFile(), filePath);
		
		
		System.out.println(path);
		file = new File(file, fileName);
//		File file = new File(path, fileName);
		
		boolean check = false;
		if(file.exists()) {
			check = file.delete();
		}
		return check;
	}
	
	public String save(MultipartFile multipartFile, String filePath, HttpSession session)throws Exception{
		
		String path="static";
		ClassPathResource classPathResource = new ClassPathResource(path);
		File file = new File(classPathResource.getFile(), filePath);
		
		System.out.println(file.getAbsolutePath());

		System.out.println(file.getPath());

		
		if(!file.exists()) {
			file.mkdirs();
		}
		
		String fileName = UUID.randomUUID().toString()+"_"+multipartFile.getOriginalFilename();
		
		file = new File(file, fileName);

		multipartFile.transferTo(file);
		System.out.println("나오니");
		
	//	multipartFile.transferTo(file);
	//	System.out.println("나오니2");

		return fileName;
	}
			


}