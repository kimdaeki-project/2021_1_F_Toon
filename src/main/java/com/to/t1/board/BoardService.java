package com.to.t1.board;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.to.t1.util.Pager;

public interface BoardService {
	
	public List<BoardVO> getList(Pager pager)throws Exception;
	
	public List<BoardVO> getManageList(Pager pager) throws Exception;

	public BoardVO getSelect(BoardVO boardVO)throws Exception;
	
	public int setInsert(BoardVO boardVO, MultipartFile [] files)throws Exception;
	
	public int setUpdate(BoardVO boardVO, MultipartFile [] files)throws Exception;

	public int setDelete(BoardVO boardVO)throws Exception;

	public int setFileDelete(BoardFileVO boardFileVO)throws Exception;

	public String setSummerFileUpload(MultipartFile file)throws Exception;
	
	public boolean setSummerFileDelete(String fileName) throws Exception;
	
}
	

