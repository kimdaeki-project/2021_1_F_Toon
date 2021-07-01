package com.to.t1.board.notice;

import java.sql.Date;
import java.util.List;

import com.to.t1.board.BoardFileVO;
import com.to.t1.board.BoardVO;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data

public class NoticeVO extends BoardVO {

	private List<BoardFileVO> files;

}