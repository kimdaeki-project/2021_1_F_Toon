package com.to.t1.board.notice;

import java.util.List;

import com.to.t1.board.BoardFileVO;
import com.to.t1.board.BoardVO;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticeVO extends BoardVO {

	private List<BoardFileVO> files;

	public List<BoardFileVO> getFiles() {
		return files;
	}

	public void setFiles(List<BoardFileVO> files) {
		this.files = files;
	}
	
	
}
