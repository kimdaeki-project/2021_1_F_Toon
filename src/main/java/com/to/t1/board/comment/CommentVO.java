package com.to.t1.board.comment;

import java.sql.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CommentVO {

	private long cno;
    private long boNum;
    private String content;
    private String writer;
    private Date reg_date;

}
