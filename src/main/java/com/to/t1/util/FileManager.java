package com.to.t1.util;

import java.io.File;
import java.util.UUID;

<<<<<<< HEAD
import javax.servlet.http.HttpSession;

=======
>>>>>>> origin/SeokJun
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileManager {
<<<<<<< HEAD
	@Autowired
	private ResourceLoader resourceLoader;
	
	public boolean delete(String name,String fileName ,HttpSession session)throws Exception {
		//1. 경로 설정
//		String path = session.getServletContext().getRealPath("upload/"+name);
		
		String filePath= "upload/member/";
		
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
	
	public String save(MultipartFile multipartFile, String filePath)throws Exception{
			
=======
	
	@Autowired
	private ResourceLoader resourceLoader;
	
	public String save(MultipartFile multipartFile, String filePath)throws Exception{

>>>>>>> origin/SeokJun
		String path="static";
		ClassPathResource classPathResource = new ClassPathResource(path);
		File file = new File(classPathResource.getFile(), filePath);
		
		System.out.println(file.getAbsolutePath());
<<<<<<< HEAD
		System.out.println(file.getPath());
=======
>>>>>>> origin/SeokJun
		
		if(!file.exists()) {
			file.mkdirs();
		}
		
		String fileName = UUID.randomUUID().toString()+"_"+multipartFile.getOriginalFilename();
		
		file = new File(file, fileName);
<<<<<<< HEAD
		multipartFile.transferTo(file);
			
=======
		
		
		multipartFile.transferTo(file);
		
>>>>>>> origin/SeokJun
		return fileName;
	}

}