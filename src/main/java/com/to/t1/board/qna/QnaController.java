package com.to.t1.board.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.to.t1.board.BoardVO;
import com.to.t1.util.Pager;

@Controller
@RequestMapping("/qna/**")
public class QnaController {
	@Autowired
	private QnaService qnaService;
	
	@ModelAttribute("board")
	public String getBoard() {
		return "qna";
	}
	@PostMapping("qnaReply")
	public ModelAndView setReply(QnaVO qnaVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = qnaService.setReply(qnaVO);
		mv.setViewName("redirect:./qnaList");
		return mv;
	}
	
	@GetMapping("qnaReply")
	public ModelAndView setReply()throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/reply");
		mv.addObject("board", "qna");
	
		return mv;
	}
	
	@GetMapping("qnaSelect")
	public ModelAndView getSelect(BoardVO boardVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		boardVO = qnaService.getSelect(boardVO);
		mv.addObject("board", "qna");
		mv.addObject("dto", boardVO);
		mv.setViewName("board/select");
		return mv;
	}
	
	@GetMapping("qnaList")
	public ModelAndView getList(Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<BoardVO> ar = qnaService.getList(pager);
		mv.addObject("list", ar);
		mv.addObject("board", "qna");
		mv.addObject("pager", pager);
		mv.setViewName("board/qnaList");
		
		return mv;	
	}
	
	@GetMapping("qnaInsert")
	public ModelAndView setInsert()throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/boardInsert");
		mv.addObject("board", "qna");
		
		return mv;
	}
	
	@PostMapping("qnaInsert")
	public ModelAndView setInsert(BoardVO boardVO, MultipartFile [] files)throws Exception{
		ModelAndView mv = new ModelAndView(); 
		int result = qnaService.setInsert(boardVO, files);
		mv.setViewName("redirect:./qnaList");
		return mv;
	}
	
	@PostMapping("qnaDelete")
	public ModelAndView setDelete(BoardVO boardVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = qnaService.setDelete(boardVO);
		
		String message = "삭제 실패";
		String path="./qnaList";
		
		if(result>0) {
			message= "삭제 성공";
		}
		
		mv.addObject("msg", message);
		mv.addObject("path", path);
		
		mv.setViewName("common/commonResult");
		
		return mv;
	}
	
	@PostMapping("update")
	public ModelAndView setUpdate(BoardVO boardVO, ModelAndView mv, MultipartFile [] files)throws Exception{
		
		int result = qnaService.setUpdate(boardVO, files);
		if(result>0) {
			//성공하면 리스트로 이동
			mv.setViewName("redirect:./qnaList");
		}else {
			//실패하면 수정실패 , 리스트로 이동
			mv.addObject("msg", "수정 실패");
			mv.addObject("path", "./qnaList");
			mv.setViewName("common/commonResult");
		}
		
		return mv;
	}
	
	@GetMapping("update")
	public ModelAndView setUpdate(BoardVO boardVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		boardVO = qnaService.getSelect(boardVO);
		mv.addObject("dto", boardVO);
		mv.addObject("board", "qna");
		mv.setViewName("board/update");
		
		return mv;
	}
}
	