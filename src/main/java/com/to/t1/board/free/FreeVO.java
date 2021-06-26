package com.to.t1.board.free;

import java.sql.Date;
import java.util.List;
import com.to.t1.board.BoardFileVO;
import lombok.Data;

@Data
public class FreeVO {

	private Long freeNum;
	private String freeTitle;
	private String username;
	private String freeContents;
	private Date freeDate;
	private Long freeHit;
	
	private List<BoardFileVO> files;
}
