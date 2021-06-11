package com.to.t1.member.admin;

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
import com.to.t1.board.notice.NoticeService;
import com.to.t1.member.MemberVO;
import com.to.t1.util.Pager;

@Controller
@RequestMapping("/admin/**")
public class AdminController {
// Admin 기능 : 1. [회원, 작품 ]조회 2. [작가, 작품]승인 
//3. [충전액]환불 4. Notice와  QNA관리(x) 
	
	//일단 접촉은 해야지
	@GetMapping("adminPage")
	public String adminHome(Model model) {
		return "admin/adminPage";
	}
	@GetMapping("test")
	public String admintest(Model model) {
		return "admin/test";
	}
	
	@Autowired
	private NoticeService noticeService;
	
	@Value("${board.notice.filePath}")
	private String filePath;
	
	@ModelAttribute("board")
	public String getBoard() {
		return "notice";
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
	
	@GetMapping("manageNoticeList")
	public ModelAndView getManageList(Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println(pager.getCurPage());
		System.out.println("FilePath : "+filePath);
		
		List<BoardVO> ar = noticeService.getManageList(pager);
		
		mv.addObject("manageNoticeList", ar);
		mv.setViewName("admin/manageNoticeList");
		mv.addObject("admin", "admin");
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
		mv.addObject("admin", "admin");
		mv.setViewName("admin/select");
		return mv;
	}
	
	@GetMapping("insert")
	public String setInsert(HttpSession session)throws Exception{
		 ModelAndView mv = new ModelAndView();
			mv.setViewName("admin/insert");
			mv.addObject("admin", "admin");
		
			
		Object obj = session.getAttribute("member");
		MemberVO memberVO = null;
		String path="redirect:/member/login";
		//if(obj != null) {}
		if(obj instanceof MemberVO) {
			memberVO = (MemberVO)obj;
			
			if(memberVO.getUsername().equals("33333333")) {
				path="admin/insert";
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
		model.addAttribute("path", "./manageNoticeList");
		
		
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
		mv.addObject("admin", "admin");
		mv.setViewName("admin/update");
		return mv;
	}
	
	@PostMapping("update")
	public ModelAndView setUpdate(BoardVO boardVO, ModelAndView mv, MultipartFile [] files) throws Exception{
		
		int result = noticeService.setUpdate(boardVO, files);
		
		if(result>0) {
			//성공하면 리스트로 이동
			mv.setViewName("redirect:./manageNoticeList");
		}else {
			//실패하면 수정실패 , 리스트로 이동
			mv.addObject("msg", "수정 실패");
			mv.addObject("path", "./manageNoticeList");
			mv.setViewName("common/commonResult");
		}
		
		return mv;
	}
	
	

	


	
}
