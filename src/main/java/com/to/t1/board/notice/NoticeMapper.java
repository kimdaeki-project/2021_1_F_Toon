package com.to.t1.board.notice;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.to.t1.board.BoardFileVO;
import com.to.t1.board.BoardMapper;
import com.to.t1.board.BoardVO;
import com.to.t1.util.Pager;

@Mapper
public interface NoticeMapper extends BoardMapper {

	public List<BoardVO> getManageList(Pager pager) throws Exception;
}
