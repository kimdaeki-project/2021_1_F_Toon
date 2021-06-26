package com.to.t1.board.free;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


import com.to.t1.board.BoardMapper;
import com.to.t1.board.BoardVO;
import com.to.t1.util.Pager;

@Mapper
public interface FreeMapper {

	public List<FreeVO> getList(Pager pager) throws Exception;
	
	public Long getTotalCount(Pager pager) throws Exception;
	
	public FreeVO getSelect(FreeVO freeVO) throws Exception;
	
	public int setInsert(FreeVO freeVO) throws Exception;
	
	public int setFileInsert(FreeFileVO freeFileVO) throws Exception;
	
	public int setUpdate(FreeVO freeVO) throws Exception;
	
	public int setHitUpdate(FreeVO freeVO) throws Exception;
	
	public int setDelete(FreeVO freeVO) throws Exception;

	public FreeFileVO getFileSelect(FreeFileVO freeFileVO)throws Exception;
	
	public int setFileDelete(FreeFileVO freeFileVO)throws Exception;
	
}