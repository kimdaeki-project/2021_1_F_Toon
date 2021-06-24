package com.to.t1.board.comment;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

 
@Service
public class CommentService {
 
	@Autowired
    private CommentMapper commentMapper;
    
    public List<CommentVO> commentListService() throws Exception{
        
        return commentMapper.commentList();
    }
    
    public int commentInsertService(CommentVO commentVO) throws Exception{
        
        return commentMapper.commentInsert(commentVO);
    }
    
    public int commentUpdateService(CommentVO commentVO) throws Exception{
        
        return commentMapper.commentUpdate(commentVO);
    }
    
    public int commentDeleteService(long cno) throws Exception{
        
        return commentMapper.commentDelete(cno);
    }
}