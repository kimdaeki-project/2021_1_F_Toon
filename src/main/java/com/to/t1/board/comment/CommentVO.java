package com.to.t1.board.comment;

import java.sql.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CommentVO {

	private long coNum;
    private long boNum;
    private String commentContents;
    private String username;
    private Date commentDate;

}
