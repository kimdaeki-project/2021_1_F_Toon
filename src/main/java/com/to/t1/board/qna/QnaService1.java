//package com.to.t1.board.qna;
//
//import java.sql.SQLException;
//import java.util.List;
//
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//import org.springframework.web.multipart.MultipartFile;
//
//import com.to.t1.board.BoardFileVO;
//import com.to.t1.board.BoardService;
//import com.to.t1.board.BoardVO;
//import com.to.t1.util.BoFileManager;
//import com.to.t1.util.Pager;
//@Service
//@Transactional(rollbackFor = Exception.class)
//public class QnaService1 implements BoardService{
//
//	@Autowired
//	private QnaMapper1 qnaMapper;
//	@Autowired
//	private BoFileManager boFileManager;
//	@Autowired
//	private HttpSession session;
//	
//	
//	public int setReply(QnaVO qnaVO)throws Exception{
//		//부모글의 ref, step, depth 조회
//		BoardVO boardVO = qnaMapper.getSelect(qnaVO);
//		QnaVO parent = (QnaVO)boardVO;
//		System.out.println(parent.getRef());
//		System.out.println(parent.getStep());
//		System.out.println(parent.getDepth());
//		
//		qnaVO.setRef(parent.getRef());
//		qnaVO.setStep(parent.getStep()+1);
//		qnaVO.setDepth(parent.getDepth()+1);
//		
//		int result = qnaMapper.setReplyUpdate(parent);
//		result = qnaMapper.setReply(qnaVO);
//		
//		return result;
//	}
//	
//	
//	@Override
//	public List<BoardVO> getList(Pager pager) throws Exception {
//		pager.makeRow();
//		
//		long totalCount = qnaMapper.getTotalCount(pager);
//		pager.makeNum(totalCount);
//		
//		return qnaMapper.getList(pager);
//	}
//
//	@Override
//	public BoardVO getSelect(BoardVO boardVO) throws Exception {
//		qnaMapper.setHitUpdate(boardVO);
//		return qnaMapper.getSelect(boardVO);
//	}
//
//	@Override
//	
//	public int setInsert(BoardVO boardVO, MultipartFile[] files) throws Exception {
//	
//		int result = qnaMapper.setInsert(boardVO);
//		
//		for(MultipartFile mf : files) {
//			BoardFileVO boardFileVO = new BoardFileVO();
//			String fileName= boFileManager.save("qna", mf, session);
//			
//			boardFileVO.setBoNum(boardVO.getBoNum());
//			boardFileVO.setFileName(fileName);
//			boardFileVO.setOriName(mf.getOriginalFilename());
//			
//			qnaMapper.setFileInsert(boardFileVO);
//		}
//		return result;
//	}
//
//	@Override
//	public int setUpdate(BoardVO boardVO, MultipartFile [] files) throws Exception {
//		// TODO Auto-generated method stub
//		return qnaMapper.setUpdate(boardVO);
//	}
//
//	@Override
//	public int setDelete(BoardVO boardVO) throws Exception {
//		// TODO Auto-generated method stub
//		//1. files table의 fileName 조회
//		//2. qna table에서 글 삭제 
//		//3. HDD에 파일들을 삭제
//		return qnaMapper.setDelete(boardVO);
//	}
//	
//	@Override
//	public int setFileDelete(BoardFileVO boardFileVO) throws Exception {
//		//fileName을 print
//		//1. 조회
//		boardFileVO = qnaMapper.getFileSelect(boardFileVO);
//		//2. table 삭제
//		int result = qnaMapper.setFileDelete(boardFileVO);
//		//3. HDD 삭제
//		if(result > 0) {
//			boFileManager.delete("qna", boardFileVO.getFileName(), session);
//		}
//		return result;
//	}
//
//}
