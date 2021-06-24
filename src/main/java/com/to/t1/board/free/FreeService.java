package com.to.t1.board.free;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;


import com.to.t1.board.BoardService;

import com.to.t1.util.BoFileManager;
import com.to.t1.util.Pager;

@Service
@Transactional(rollbackFor = Exception.class)
public class FreeService {

	@Autowired
	private FreeMapper freeMapper;
	@Autowired
	private BoFileManager boFileManager;
	@Autowired
	private HttpSession session;

	@Value("${board.free.filePath}")
	private String filePath;

	
	
	public List<FreeVO> getList(Pager pager) throws Exception {

		pager.makeRow();
		Long totalCount = freeMapper.getTotalCount(pager);
		pager.makeNum(totalCount);
		return freeMapper.getList(pager);
	}

	public FreeVO getSelect(FreeVO freeVO) throws Exception {
	
		freeMapper.setHitUpdate(freeVO);
		return freeMapper.getSelect(freeVO);
	}

	public int setInsert(FreeVO freeVO, MultipartFile [] files) throws Exception {
	
		int result = freeMapper.setInsert(freeVO);

		//글번호 찾기

		for(MultipartFile mf : files) {
			FreeFileVO freeFileVO = new FreeFileVO();
			String fileName= boFileManager.save("free", mf, session);

			freeFileVO.setBoNum(freeVO.getBoNum());
			freeFileVO.setFileName(fileName);
			freeFileVO.setOriName(mf.getOriginalFilename());

			freeMapper.setFileInsert(freeFileVO);
		}

		return result;
	}


	public int setUpdate(FreeVO freeVO, MultipartFile [] files) throws Exception {
		for(MultipartFile multipartFile:files) {
			FreeFileVO freeFileVO = new FreeFileVO();
			//1. File들을 HDD에 저장
			String fileName= boFileManager.save("free", multipartFile, session);
			freeFileVO.setFileName(fileName);
			freeFileVO.setOriName(multipartFile.getOriginalFilename());
			freeFileVO.setBoNum(freeVO.getBoNum());
			//2. DB에 Insert
			freeMapper.setFileInsert(freeFileVO);
		}
		return freeMapper.setUpdate(freeVO);
	}


	public int setDelete(FreeVO freeVO) throws Exception {

		return freeMapper.setDelete(freeVO);
	}



	public int setFileDelete(FreeFileVO freeFileVO) throws Exception {
		//fileName을 print
		//1. 조회
		freeFileVO = freeMapper.getFileSelect(freeFileVO);
		//2. table 삭제
		int result = freeMapper.setFileDelete(freeFileVO);
		//3. HDD 삭제
		if(result > 0) {
			boFileManager.delete("free", freeFileVO.getFileName(), session);
		}
		return result;
	}


	public boolean setFreeSummerFileDelete(String fileName) throws Exception {
		boolean result = boFileManager.delete("free", fileName, session);
		return result;
	}


	public String setFreeSummerFileUpload(MultipartFile file)throws Exception{

		String fileName = boFileManager.save("free", file, session);
		return fileName;
	}
}