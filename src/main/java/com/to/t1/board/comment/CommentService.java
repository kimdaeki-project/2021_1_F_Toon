package com.to.t1.board.comment;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

 
@Service
public class CommentService {
 
	@Autowired
    private CommentMapper commentMapper;
    
    public List<CommentVO> commentList(CommentVO commentVO) throws Exception{
        
        return commentMapper.commentList(commentVO);
    }
    
    public int commentInsert(CommentVO commentVO) throws Exception{
        
        return commentMapper.commentInsert(commentVO);
    }
    
    public int commentUpdate(CommentVO commentVO) throws Exception{
        
        return commentMapper.commentUpdate(commentVO);
    }
    
    public int commentDelete(long coNum) throws Exception{
        
        return commentMapper.commentDelete(coNum);
    }
}