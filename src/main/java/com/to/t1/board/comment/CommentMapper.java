package com.to.t1.board.comment;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface CommentMapper {

	// 댓글 개수
    public int commentCount() throws Exception;
 
    // 댓글 목록
    public List<CommentVO> commentList() throws Exception;
 
    // 댓글 작성
    public int commentInsert(CommentVO commentVO) throws Exception;
    
    // 댓글 수정
    public int commentUpdate(CommentVO commentVO) throws Exception;
 
    // 댓글 삭제
    public int commentDelete(long cno) throws Exception;

	
}
