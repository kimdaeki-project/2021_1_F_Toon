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
    private List<CommentVO> commentServiceList(Model model) throws Exception{
        
        return commentService.commentListService();
    }
    
    @RequestMapping("/insert") //댓글 작성 
    @ResponseBody
    private long commentServiceInsert(@RequestParam long boNum, @RequestParam String content) throws Exception{
        
        CommentVO commentVO = new CommentVO();
        commentVO.setBoNum(boNum);
        commentVO.setContent(content);
        //로그인 기능을 구현했거나 따로 댓글 작성자를 입력받는 폼이 있다면 입력 받아온 값으로 사용하면 됩니다. 저는 따로 폼을 구현하지 않았기때문에 임시로 "test"라는 값을 입력해놨습니다.
        commentVO.setWriter("test");  
        
        return commentService.commentInsertService(commentVO);
    }
    
    @RequestMapping("/update") //댓글 수정  
    @ResponseBody
    private long commentServiceUpdate(@RequestParam long cno, @RequestParam String content) throws Exception{
        
        CommentVO commentVO = new CommentVO();
        commentVO.setCno(cno);
        commentVO.setContent(content);
        
        return commentService.commentUpdateService(commentVO);
    }
    
    @RequestMapping("/delete/{cno}") //댓글 삭제  
    @ResponseBody
    private long commentServiceDelete(@PathVariable long cno) throws Exception{
        
        return commentService.commentDeleteService(cno);
    }
    
}