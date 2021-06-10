package com.to.t1.board.notice;

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
@RequestMapping("/notice/**")
public class NoticeController {
	
	//DI : Dependency Inject
	
	//Unsatified dependency 
	@Autowired
	private NoticeService noticeService;
	
	@Value("${board.notice.filePath}")
	private String filePath;
	
	@ModelAttribute("board")
	public String getBoard() {
		return "notice";
	}
	
	// /notice/fileDown
	@GetMapping("fileDown")
	public ModelAndView fileDown(String fileName, String oriName)throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("fileName", fileName);
		mv.addObject("oriName", oriName);
		mv.addObject("filePath", filePath);
		
		// view의 이름은 Bean의 이름과 일치
		mv.setViewName("down");
		//  /fileDown.html
		return mv;
	}
	
	@PostMapping("summerFileDelete")
	public ModelAndView setSummerFileDelete(String fileName)throws Exception{
		ModelAndView mv = new ModelAndView();
		boolean result = noticeService.setSummerFileDelete(fileName);
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	@PostMapping("summerFileUpload")
	public ModelAndView setSummerFileUpload(MultipartFile file)throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println("썸머 notice 파일 업로드");
		System.out.println(file.getOriginalFilename());
		String fileName = noticeService.setSummerFileUpload(file);
		fileName = "../upload/notice/"+fileName;
		mv.addObject("result", fileName);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	
	// /notice/list
	@GetMapping("noticeList")
	public ModelAndView getList(Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println(pager.getCurPage());
		System.out.println("FilePath : "+filePath);
		
		List<BoardVO> ar = noticeService.getList(pager);
		
		mv.addObject("noticeList", ar);
		mv.setViewName("board/noticeList");
		mv.addObject("board", "notice");
		mv.addObject("pager", pager);
		System.out.println(pager.getStartNum());
		System.out.println(pager.getLastNum());
		
		return mv;
	}
	
	@GetMapping("select")
	public ModelAndView getSelect(BoardVO boardVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		boardVO = noticeService.getSelect(boardVO);
		mv.addObject("vo", boardVO);
		mv.setViewName("board/select");
		return mv;
	}
	
	@GetMapping("insert")
	public String setInsert(HttpSession session)throws Exception{
		 ModelAndView mv = new ModelAndView();
			mv.setViewName("board/insert");
			mv.addObject("board", "notice");
		
			
		Object obj = session.getAttribute("member");
		MemberVO memberVO = null;
		String path="redirect:/member/login";
		//if(obj != null) {}
		if(obj instanceof MemberVO) {
			memberVO = (MemberVO)obj;
			
			if(memberVO.getUsername().equals("admin")) {
				path="board/insert";
			}
		}	
		
		
		
		return path;
	}
	
	@PostMapping("insert")
	public String setInsert(BoardVO boardVO, MultipartFile [] files, Model model)throws Exception{
		
		int result = noticeService.setInsert(boardVO, files);
		
		String message="등록 실패";
		
		if(result>0) {
			message="등록 성공";
		}
		model.addAttribute("msg", message);
		model.addAttribute("path", "./noticeList");
		
		
		return "common/commonResult";
	}
	
	@PostMapping("delete")
	public String setDelete(BoardVO boardVO)throws Exception{
		
		int result = noticeService.setDelete(boardVO);
		
		return "redirect:./noticeList";
	}
	
	@GetMapping("fileDelete")
	public ModelAndView setFileDelete(BoardFileVO boardFileVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = noticeService.setFileDelete(boardFileVO);
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	@GetMapping("update")
	public ModelAndView setUpdate(BoardVO boardVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		boardVO = noticeService.getSelect(boardVO);
		
		mv.addObject("vo", boardVO);
		mv.addObject("board", "notice");
		mv.setViewName("board/update");
		return mv;
	}
	
	@PostMapping("update")
	public ModelAndView setUpdate(BoardVO boardVO, ModelAndView mv, MultipartFile [] files) throws Exception{
		
		int result = noticeService.setUpdate(boardVO, files);
		
		if(result>0) {
			//성공하면 리스트로 이동
			mv.setViewName("redirect:./noticeList");
		}else {
			//실패하면 수정실패 , 리스트로 이동
			mv.addObject("msg", "수정 실패");
			mv.addObject("path", "./noticeList");
			mv.setViewName("common/commonResult");
		}
		
		return mv;
	}
	
	

	

}