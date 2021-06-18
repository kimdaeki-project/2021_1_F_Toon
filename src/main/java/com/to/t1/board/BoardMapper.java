package com.to.t1.board;

import java.util.List;

import com.to.t1.util.Pager;

public interface BoardMapper {
	
	public List<BoardVO> getList(Pager pager) throws Exception;
		
	public Long getTotalCount(Pager pager) throws Exception;
	
	public BoardVO getSelect(BoardVO boardVO) throws Exception;
	
	public int setInsert(BoardVO boardVO) throws Exception;
	
	public int setFileInsert(BoardFileVO boardFileVO) throws Exception;
	
	public int setUpdate(BoardVO boardVO) throws Exception;
	
	public int setHitUpdate(BoardVO boardVO) throws Exception;
	
	public int setDelete(BoardVO boardVO) throws Exception;

	public BoardFileVO getFileSelect(BoardFileVO boardFileVO)throws Exception;
	
	public int setFileDelete(BoardFileVO boardFileVO)throws Exception;
	
}
