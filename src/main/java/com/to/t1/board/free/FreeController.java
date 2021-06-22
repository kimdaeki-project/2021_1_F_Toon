package com.to.t1.board.free;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.to.t1.board.BoardFileVO;
import com.to.t1.board.BoardVO;
import com.to.t1.member.MemberVO;
import com.to.t1.util.Pager;

@Controller
@RequestMapping("/free/**")
public class FreeController {
	
	//DI : Dependency Inject
	
	//Unsatified dependency 
	@Autowired
	private FreeService freeService;
	
	@Value("${board.free.filePath}")
	private String filePath;
	
	@ModelAttribute("board")
	public String getBoard() {
		return "free";
	}
	
	@PostMapping("FreeSummerFileDelete")
	public ModelAndView setFreeSummerFileDelete(String fileName)throws Exception{
		ModelAndView mv = new ModelAndView();
		boolean result = freeService.setFreeSummerFileDelete(fileName);
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	@PostMapping("FreeSummerFileUpload")
	public ModelAndView setFreeSummerFileUpload(MultipartFile file)throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println("썸머 free 파일 업로드");
		System.out.println(file.getOriginalFilename());
		String fileName = freeService.setFreeSummerFileUpload(file);
		fileName = "../upload/free/"+fileName;
		mv.addObject("result", fileName);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}

	@GetMapping("freeList")
	public ModelAndView getList(Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println(pager.getCurPage());
		System.out.println("FilePath : "+filePath);
		
		List<FreeVO> ar = freeService.getList(pager);
		
		mv.addObject("freeList", ar);
		mv.setViewName("free/freeList");
		mv.addObject("free", "free");
		mv.addObject("pager", pager);
		System.out.println(pager.getStartNum());
		System.out.println(pager.getLastNum());
		
		return mv;
	}
	
	@GetMapping("freeSelect")
	public ModelAndView getSelect(FreeVO freeVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		freeVO = freeService.getSelect(freeVO);
		mv.addObject("vo", freeVO);
		mv.setViewName("free/freeSelect");
		return mv;
	}
	
	@GetMapping("freeInsert")
	public ModelAndView setInsert(HttpSession session)throws Exception{
		 ModelAndView mv = new ModelAndView();
			mv.setViewName("free/freeInsert");
			mv.addObject("free", "free");
		
			return mv;
			
		}	
	
	@PostMapping("freeInsert")
	public String setInsert(FreeVO freeVO, MultipartFile [] files, Model model)throws Exception{
		
		int result = freeService.setInsert(freeVO, files);
		
		String message="등록 실패";
		
		if(result>0) {
			message="등록 성공";
		}
		model.addAttribute("msg", message);
		model.addAttribute("path", "./freeList");
		
		
		return "common/commonResult";
	}
	
	@PostMapping("freeDelete")
	public String setDelete(FreeVO freeVO)throws Exception{
		
		int result = freeService.setDelete(freeVO);
		
		return "redirect:./freeList";
	}
	
	@GetMapping("fileDelete")
	public ModelAndView setFileDelete(BoardFileVO boardFileVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = freeService.setFileDelete(boardFileVO);
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	@GetMapping("freeUpdate")
	public ModelAndView setUpdate(FreeVO freeVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		freeVO = freeService.getSelect(freeVO);
		
		mv.addObject("vo", freeVO);
		mv.addObject("free", "free");
		mv.setViewName("free/freeUpdate");
		return mv;
	}
	
	@PostMapping("freeUpdate")
	public ModelAndView setUpdate(FreeVO freeVO, ModelAndView mv, MultipartFile [] files) throws Exception{
		
		int result = freeService.setUpdate(freeVO, files);
		
		if(result>0) {
			
			mv.setViewName("redirect:./freeList");
		
		}else {
			
			mv.addObject("msg", "수정 실패");
			mv.addObject("path", "./freeUpdate");
			mv.setViewName("common/commonResult");
		}
		
		return mv;
	}
	

}