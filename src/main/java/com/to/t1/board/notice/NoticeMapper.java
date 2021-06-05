package com.to.t1.board.notice;

import org.apache.ibatis.annotations.Mapper;

import com.to.t1.board.BoardFileVO;
import com.to.t1.board.BoardMapper;

@Mapper
public interface NoticeMapper extends BoardMapper {

	public BoardFileVO getFileSelect(BoardFileVO boardFileVO)throws Exception;

}
