package com.to.t1.board.qna;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.to.t1.board.BoardVO;
import com.to.t1.member.MemberService;
import com.to.t1.member.MemberVO;
import com.to.t1.util.Pager;

@Controller
@RequestMapping("/qna/**")
public class QnaController {
	@Autowired
	private QnaService qnaService;
	
	@Autowired
	 private MemberService memberService;
	
	@ModelAttribute("board")
	public String getQnaBoard() {
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
	public ModelAndView getSelect(BoardVO boardVO, MemberVO memberVO, Authentication auth2, Model model)throws Exception{
	     ModelAndView mv = new ModelAndView();
		
	     if(auth2 != null) {
	    	  memberVO = memberService.myPage((MemberVO) auth2.getPrincipal());
	    	  mv.addObject("memberVO",memberVO);
	      }
	     
	     model.addAttribute("memberVO", memberVO);
	    
	     System.out.println("memberVO :"+ memberVO);
	     
	     System.out.println(memberVO.getUsername());
	     
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
	
	@PostMapping("qnaDelete")
	public String setQnaDelete(BoardVO boardVO) throws Exception{
		
		int result = qnaService.setQnaDelete(boardVO);
		
		return "redirect:./qnaList";
	}
	
	@PostMapping("summerFileDelete")
	public ModelAndView setSummerFileDelete(String fileName)throws Exception{
		ModelAndView mv = new ModelAndView();
		boolean result = qnaService.setSummerFileDelete(fileName);
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	@PostMapping("summerFileUpload")
	public ModelAndView setSummerFileUpload(MultipartFile file)throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println("썸머 qna 파일 업로드");
		System.out.println(file.getOriginalFilename());
		String fileName = qnaService.setSummerFileUpload(file);
		fileName = "../upload/qna/"+fileName;
		mv.addObject("result", fileName);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	
}