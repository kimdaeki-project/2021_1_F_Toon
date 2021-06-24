package com.to.t1.board.free;

import java.sql.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class FreeVO {

	private Long boNum;
	private String freeTitle;
	private String username;
	private String freeContents;
	private Date freeDate;
	private Long freeHit;
	
	private List<FreeFileVO> freefiles;
}
