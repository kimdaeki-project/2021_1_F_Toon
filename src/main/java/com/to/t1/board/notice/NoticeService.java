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
	
	@Override
	public List<BoardVO> getList(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		pager.makeRow();
		Long totalCount = noticeMapper.getTotalCount(pager);
		pager.makeNum(totalCount);
		return noticeMapper.getList(pager);
	}

	@Override
	public BoardVO getSelect(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		noticeMapper.setHitUpdate(boardVO);
		return noticeMapper.getSelect(boardVO);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int setInsert(BoardVO boardVO, MultipartFile [] files) throws Exception {
		// TODO Auto-generated method stub
		int result = noticeMapper.setInsert(boardVO);
		
		//예외는 발생하지 않고 결과가 0이 나올경우 
		//강제로 예외 발생
		if(result<1) {
			throw new Exception();
		}
		
		String filePath= this.filePath;
		
		for(MultipartFile multipartFile:files) {
			if(multipartFile.getSize()==0) {
				continue;
			}
			String fileName= boFileManager.save(multipartFile, filePath, session);
			System.out.println(fileName);
			BoardFileVO boardFileVO = new BoardFileVO();
			boardFileVO.setFileName(fileName);
			boardFileVO.setOriName(multipartFile.getOriginalFilename());
			boardFileVO.setBoNum(boardVO.getBoNum());
			noticeMapper.setFileInsert(boardFileVO);
		}
		
		return result;
	}

	@Override
	public int setUpdate(BoardVO boardVO, MultipartFile [] files) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.setUpdate(boardVO);
	}

	@Override
	public int setDelete(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.setDelete(boardVO);
	}
	
	
	@Override
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
	@Override
	public boolean setSummerFileDelete(String fileName) throws Exception {
		boolean result = boFileManager.delete("notice", fileName, session);
		return result;
	}
	@Override
	public String setSummerFileUpload(MultipartFile file) throws Exception {
		String fileName = boFileManager.save(file,"notice", session);
		return fileName;
	}

}