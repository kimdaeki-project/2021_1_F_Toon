package com.to.t1.board.qna;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.to.t1.board.BoardFileVO;
import com.to.t1.board.BoardService;
import com.to.t1.board.BoardVO;
import com.to.t1.util.BoFileManager;
import com.to.t1.util.Pager;
@Service
public class QnaService implements BoardService{

	@Autowired
	private QnaMapper qnaMapper;
	@Autowired
	private BoFileManager boFileManager;
	@Autowired
	private HttpSession session;
	
	
	public int setReply(QnaVO qnaVO)throws Exception{
		//부모글의 ref, step, depth 조회
		BoardVO boardVO = qnaMapper.getSelect(qnaVO);
		QnaVO parent = (QnaVO)boardVO;
		System.out.println(parent.getRef());
		System.out.println(parent.getStep());
		System.out.println(parent.getDepth());
		
		qnaVO.setRef(parent.getRef());
		qnaVO.setStep(parent.getStep()+1);
		qnaVO.setDepth(parent.getDepth()+1);
		
		int result = qnaMapper.setReplyUpdate(parent);
		result = qnaMapper.setReply(qnaVO);
		
		return result;
	}
	
	
	@Override
	public List<BoardVO> getList(Pager pager) throws Exception {
		pager.makeRow();
		
		//pager.makeNum(qnaMapper.getTotalCount(pager));
		
		return qnaMapper.getList(pager);
	}

	@Override
	public BoardVO getSelect(BoardVO boardVO) throws Exception {
		qnaMapper.setHitUpdate(boardVO);
		return qnaMapper.getSelect(boardVO);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int setInsert(BoardVO boardVO, MultipartFile[] files) throws Exception {
		//1. qna table insert
		int result = qnaMapper.setInsert(boardVO);
		
		//2. qna Ref update
		result = qnaMapper.setRefUpdate(boardVO);
		
		//3. File Save
		String filePath= "upload/qna/";
		
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
			qnaMapper.setFileInsert(boardFileVO);
		}
		return result;
	}

	@Override
	public int setUpdate(BoardVO boardVO, MultipartFile [] files) throws Exception {
		// TODO Auto-generated method stub
		return qnaMapper.setUpdate(boardVO);
	}

	@Override
	public int setDelete(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		//1. files table의 fileName 조회
		//2. qna table에서 글 삭제 
		//3. HDD에 파일들을 삭제
		return qnaMapper.setDelete(boardVO);
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int setReplyInsert(BoardVO boardVO, MultipartFile [] files)throws Exception{
		//boardVO.num = 부모의 글번호
		
		//1. step update
		int result = qnaMapper.setReplyUpdate(boardVO);
		
		//2. reply insert
		result = qnaMapper.setReplyInsert(boardVO);
		
		//3. File Hdd에 저장
		String filePath= "upload/qna/";
		
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
			qnaMapper.setFileInsert(boardFileVO);
		}
		return result;
	}
	
	@Override
	public int setFileDelete(BoardFileVO boardFileVO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public boolean setSummerFileDelete(String fileName) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public String setSummerFileUpload(MultipartFile file) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	

}
