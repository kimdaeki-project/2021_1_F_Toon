package com.to.t1.board.comment;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

 
@Controller
@RequestMapping("/comment")
public class CommentController {
 
    @Autowired
    private CommentService commentService;
    
    
    @RequestMapping("/commentList") //댓글 리스트
    @ResponseBody
    private List<CommentVO> commentList(CommentVO commentVO, Model model) throws Exception{

        return commentService.commentList(commentVO);
    }
    
    @RequestMapping("/insert") //댓글 작성 
    @ResponseBody
    private long commentInsert(@RequestParam long boNum, @RequestParam String commentContents, @RequestParam String username) throws Exception {
        
        CommentVO commentVO = new CommentVO();
        commentVO.setBoNum(boNum);
        commentVO.setCommentContents(commentContents);
        commentVO.setUsername(username);
        int dd = commentService.commentInsert(commentVO);
        System.out.println("나오냐"+dd);
        return dd;
    }
    
    @RequestMapping("/update") //댓글 수정  
    @ResponseBody
    private long commentUpdate(@RequestParam long coNum, @RequestParam String commentContents) throws Exception{
    	
        CommentVO commentVO = new CommentVO();
        commentVO.setCoNum(coNum);
        commentVO.setCommentContents(commentContents);
  
        return commentService.commentUpdate(commentVO);
    }
    
    @RequestMapping("/delete/{coNum}") //댓글 삭제  
    @ResponseBody
    private long commentDelete(@PathVariable long coNum) throws Exception{
        
        return commentService.commentDelete(coNum);
    }
    
}