package com.to.t1.member.admin;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.to.t1.toon.ToonVO;
import com.to.t1.util.BoFileManager;
import com.to.t1.util.FileManager;
import com.to.t1.util.Pager;

@Service
public class AdminService {

	@Autowired
	private AdminMapper adminMapper;
	@Autowired
	private FileManager fileManager;
	@Autowired
	private BoFileManager boFileManager;
	
	@Autowired
	private HttpSession session;

	
	public List<ToonVO> getManageToonList(Pager pager) throws Exception {
		
		pager.makeRow();
		Long totalCount = adminMapper.getTotalCount(pager);
		pager.makeNum(totalCount);
		return adminMapper.getManageToonList(pager);
	}
	
	public ToonVO getManageToonSelect(ToonVO toonVO) throws Exception {
		
		return adminMapper.getManageToonSelect(toonVO);
	}

	public int setManageToonInsert(ToonVO toonVO, MultipartFile [] files) throws Exception {


		int result = adminMapper.setManageToonInsert(toonVO);

		//글번호 찾기

		for(MultipartFile mf : files) {
			AdminFileVO adminFileVO = new AdminFileVO();
			String fileName= boFileManager.save("toon", mf, session);

			adminFileVO.setToonNum(toonVO.getToonNum());
			adminFileVO.setFileName(fileName);
			adminFileVO.setOriName(mf.getOriginalFilename());

			adminMapper.setFileInsert(adminFileVO);
		}

		return result;
	}


	public int setManageToonUpdate(ToonVO toonVO, MultipartFile [] files) throws Exception {
		for(MultipartFile multipartFile:files) {
			AdminFileVO adminFileVO = new AdminFileVO();
			//1. File들을 HDD에 저장
			String fileName= boFileManager.save("toon", multipartFile, session);
			adminFileVO.setFileName(fileName);
			adminFileVO.setOriName(multipartFile.getOriginalFilename());
			adminFileVO.setToonNum(toonVO.getToonNum());
			//2. DB에 Insert
			adminMapper.setFileInsert(adminFileVO);
		}
		return adminMapper.setManageToonUpdate(toonVO);
	}


	public int setManageToonDelete(ToonVO toonVO) throws Exception {

		return adminMapper.setManageToonDelete(toonVO);
	}



	public int setToonFileDelete(AdminFileVO adminFileVO) throws Exception {
		//fileName을 print
		//1. 조회
		adminFileVO = adminMapper.getFileSelect(adminFileVO);
		//2. table 삭제
		int result = adminMapper.setToonFileDelete(adminFileVO);
		//3. HDD 삭제
		if(result > 0) {
			boFileManager.delete("toon", adminFileVO.getFileName(), session);
		}
		return result;
	}


	public boolean setToonSummerFileDelete(String fileName) throws Exception {
		boolean result = boFileManager.delete("toon", fileName, session);
		return result;
	}


	public String setToonSummerFileUpload(MultipartFile file)throws Exception{

		String fileName = boFileManager.save("toon", file, session);
		return fileName;
	}
}





	
	
	
	

	