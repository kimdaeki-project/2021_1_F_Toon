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
	
	@GetMapping("qnaList")
	public String getList(Pager pager, Model model)throws Exception{
		List<BoardVO> ar = qnaService.getList(pager);
		model.addAttribute("qnaList", ar);
		model.addAttribute("pager", pager);
		for(BoardVO boardVO :ar) {
			QnaVO qnaVO = (QnaVO)boardVO;
			System.out.println(qnaVO.getDepth());
		}
		return "board/qnaList";
	}
	
	@GetMapping("qnaSelect")
	public ModelAndView getSelect(BoardVO boardVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		boardVO = qnaService.getSelect(boardVO);
		mv.addObject("vo", boardVO);
		mv.setViewName("board/qnaSelect");
		return mv;
	}	
	
	@GetMapping("qnaInsert")
	public String setInsert(Model model)throws Exception{
		model.addAttribute("vo", new BoardVO());
		model.addAttribute("action", "qnaInsert");
		return "board/qnaInsert";
	}
	
	@PostMapping("qnaInsert")
	public String setInsert(BoardVO boardVO, MultipartFile [] files)throws Exception{
		int result = qnaService.setInsert(boardVO, files);
		
		return "redirect:./qnaList";
	}

	@GetMapping("qnaUpdate")
	public String setUpdate(BoardVO boardVO, Model model)throws Exception{
		boardVO = qnaService.getSelect(boardVO);
		model.addAttribute("vo", boardVO);
		model.addAttribute("action", "qnaUpdate");
		return "board/qnaUpdate";
		
	}
	
	@PostMapping("qnaUpdate")
	public String setUpdate(BoardVO boardVO, MultipartFile [] files)throws Exception{
		
		int result = qnaService.setUpdate(boardVO, files);
		
		return "redirect:./qnaList";
	}
	
	@GetMapping("delete")
	public String setDelete(BoardVO boardVO)throws Exception{
		
		int result = qnaService.setDelete(boardVO);
		
		return "redirect:./qnaList";
	}

	@GetMapping("reply")
	public String setReplyInsert(BoardVO boardVO, Model model)throws Exception{
		model.addAttribute("vo", boardVO);
		model.addAttribute("action", "reply");
		return "board/reply";
	}
	
	@PostMapping("reply")
	public String setReplyInsert(BoardVO boardVO, MultipartFile [] files)throws Exception{
		
		int result = qnaService.setReplyInsert(boardVO, files);
	
		return "redirect:./qnaList";
	}	
	
	
	
	
	
	
	
	
}