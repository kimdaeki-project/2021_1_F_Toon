package com.to.t1.board.notice;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.to.t1.board.BoardFileVO;
import com.to.t1.board.BoardService;
import com.to.t1.board.BoardVO;
import com.to.t1.util.BoFileManager;
import com.to.t1.util.Pager;

@Service
@Transactional(rollbackFor = Exception.class)
public class NoticeService implements BoardService {

	@Autowired
	private NoticeMapper noticeMapper;
	@Autowired
	private BoFileManager boFileManager;
	@Autowired
	private HttpSession session;

	@Value("${board.notice.filePath}")
	private String filePath;

	public List<BoardVO> getManageList(Pager pager) throws Exception {
		
		pager.makeRow();
		Long totalCount = noticeMapper.getTotalCount(pager);
		pager.makeNum(totalCount);
		return noticeMapper.getManageList(pager);
	}
	
	@Override
	public List<BoardVO> getList(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		pager.makeRow();
		Long totalCount = noticeMapper.getTotalCount(pager);
		pager.makeNum(totalCount);
		return noticeMapper.getList(pager);
	}
	
	public BoardVO getManageSelect(BoardVO boardVO) throws Exception {
		
		return noticeMapper.getSelect(boardVO);
	}
	
	@Override
	public BoardVO getSelect(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		noticeMapper.setHitUpdate(boardVO);
		return noticeMapper.getSelect(boardVO);
	}

	public int setInsert(BoardVO boardVO, MultipartFile [] files) throws Exception {
		
		int result = noticeMapper.setInsert(boardVO);

		//글번호 찾기

		for(MultipartFile mf : files) {
			BoardFileVO boardFileVO = new BoardFileVO();
			String fileName= boFileManager.save("notice", mf, session);

			boardFileVO.setBoNum(boardVO.getBoNum());
			boardFileVO.setFileName(fileName);
			boardFileVO.setOriName(mf.getOriginalFilename());

			noticeMapper.setFileInsert(boardFileVO);
		}

		return result;
	}


	public int setUpdate(BoardVO boardVO, MultipartFile [] files) throws Exception {
		for(MultipartFile multipartFile:files) {
			BoardFileVO boardFileVO = new BoardFileVO();
			//1. File들을 HDD에 저장
			String fileName= boFileManager.save("notice", multipartFile, session);
			boardFileVO.setFileName(fileName);
			boardFileVO.setOriName(multipartFile.getOriginalFilename());
			boardFileVO.setBoNum(boardVO.getBoNum());
			//2. DB에 Insert
			noticeMapper.setFileInsert(boardFileVO);
		}
		return noticeMapper.setUpdate(boardVO);
	}


	public int setDelete(BoardVO boardVO) throws Exception {

		return noticeMapper.setDelete(boardVO);
	}



	public int setFileDelete(BoardFileVO boardFileVO) throws Exception {
		//fileName을 print
		//1. 조회
		boardFileVO = noticeMapper.getFileSelect(boardFileVO);
		//2. table 삭제
		int result = noticeMapper.setFileDelete(boardFileVO);
		//3. HDD 삭제
		if(result > 0) {
			boFileManager.delete("notice", boardFileVO.getFileName(), session);
		}
		return result;
	}


	public boolean setSummerFileDelete(String fileName) throws Exception {
		boolean result = boFileManager.delete("notice", fileName, session);
		return result;
	}


	public String setSummerFileUpload(MultipartFile file)throws Exception{

		String fileName = boFileManager.save("notice", file, session);
		return fileName;
	}
}