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
import com.to.t1.board.qna.QnaService;
import com.to.t1.board.qna.QnaVO;
import com.to.t1.member.MemberService;
import com.to.t1.member.MemberVO;
import com.to.t1.toon.ToonService;
import com.to.t1.toon.ToonVO;
import com.to.t1.util.Pager;

@Controller
@RequestMapping("/admin/**")
public class AdminController {
// Admin 기능 : 1. [회원, 작품 ]조회 2. [작가, 작품]승인 
//3. [충전액]환불 4. Notice와  QNA관리(x) 
	@Autowired
	private AdminService adminService;
	
	//일단 접촉은 해야지
	@GetMapping("adminPage")
	public String adminHome(Model model) {
		return "admin/adminPage";
	}
	@GetMapping("test")
	public String admintest(Model model) {
		return "admin/test";
	}
	//작품
	@Autowired
	private ToonService toonService;
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("manageToonList")
	public ModelAndView getList(Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<ToonVO> list=toonService.getList();
		mv.addObject("list", list);
		mv.addObject("listsize", list.size());
		mv.setViewName("admin/manageToonList");
		mv.addObject("admin", "admin");
		mv.addObject("pager", pager);
		
		return mv;
	}
	
	@GetMapping("toonSelect")
	public void getSelect(ToonVO toonVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		toonVO= toonService.getSelect(toonVO);
		mv.addObject("toonVO", toonVO);
		
	}

	@GetMapping("toonDay")

	public ModelAndView toonDay(ToonVO toonVO,MemberVO memberVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		toonVO.setToonDay("mon");
		List<ToonVO> mt = toonService.toonDay(toonVO,memberVO);
		
		toonVO.setToonDay("tue");
		List<ToonVO> tt = toonService.toonDay(toonVO,memberVO);
		
		toonVO.setToonDay("wen");
		List<ToonVO> wt = toonService.toonDay(toonVO,memberVO);
		
		toonVO.setToonDay("the");
		List<ToonVO> tt2 = toonService.toonDay(toonVO,memberVO);
		
		toonVO.setToonDay("fri");
		List<ToonVO> ft = toonService.toonDay(toonVO,memberVO);
		
		toonVO.setToonDay("sat");
		List<ToonVO> st = toonService.toonDay(toonVO,memberVO);
		
		toonVO.setToonDay("sun");
		List<ToonVO> st2 = toonService.toonDay(toonVO,memberVO);
		
		
		mv.addObject("mt", mt);
		mv.addObject("tt", tt);
		mv.addObject("wt", wt);
		mv.addObject("tt2", tt2);
		mv.addObject("ft", ft);
		mv.addObject("st", st);
		mv.addObject("st2", st2);
		mv.setViewName("admin/manageToonList/toonDay");
		return mv ;
	}
	
	@GetMapping("genre")
	public ModelAndView genre(ToonVO toonVO,MemberVO memberVO)throws Exception {
		ModelAndView mv = new ModelAndView();
		
		toonVO.setGenre("action");
		List<ToonVO> ac = toonService.genre(toonVO,memberVO);
		
		toonVO.setGenre("school");
		List<ToonVO> sc = toonService.genre(toonVO,memberVO);
		
		toonVO.setGenre("romance");
		List<ToonVO> ro = toonService.genre(toonVO,memberVO);		
		
		toonVO.setGenre("fantasy");
		List<ToonVO> fa = toonService.genre(toonVO,memberVO);
		
		toonVO.setGenre("thriller");
		List<ToonVO> th = toonService.genre(toonVO,memberVO);
		
		toonVO.setGenre("comedy");
		List<ToonVO> co = toonService.genre(toonVO,memberVO);
		
		mv.addObject("action", ac);
		mv.addObject("school", sc);
		mv.addObject("romance", ro);		
		mv.addObject("fantasy", fa);
		mv.addObject("thriller", th);
		mv.addObject("comedy", co);		

		mv.setViewName("admin/manageToonList/genre");
		
		return mv;
	}
	
	
	
	
	@GetMapping("ranking")
	public ModelAndView ranking(ToonVO toonVO,MemberVO memberVO)throws Exception {
		ModelAndView mv = new ModelAndView();
		
		toonVO.setTotalHit(0);
		List<ToonVO> ra = toonService.ranking(toonVO,memberVO);
		toonVO.setTotalHit(0);
		List<ToonVO> ra2 = toonService.ranking(toonVO,memberVO);
		
		mv.addObject("rank", ra);
		mv.addObject("rank2", ra2);
		
		mv.setViewName("admin/manageToonList/ranking");
		
		return mv;
	}
	
	
	
	
	@GetMapping("endRe")
	public ModelAndView endKr(ToonVO toonVO,MemberVO memberVO)throws Exception {
		ModelAndView mv = new ModelAndView();
		
		toonVO.setTotalHit(0);
		List<ToonVO> en = toonService.endRe(toonVO,memberVO);
		
		mv.addObject("end", en);
		
		mv.setViewName("admin/manageToonList/endRe");
		
		
		return mv;
	}
	
	@GetMapping("dayList")
	public String dayList() {
		return "admin/manageToonList/dayList";
	}
	
	
///////////////////////////////////////////////////////////////////////////////////////	
///////////////////////////////////////////////////////////////////////////////////////	
///////////////////////////////////////////////////////////////////////////////////////	
	//공지사항,질의응답
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
	
	@GetMapping("manageSelect")
	public ModelAndView getSelect(BoardVO boardVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		boardVO = noticeService.getSelect(boardVO);
		mv.addObject("vo", boardVO);
		mv.addObject("admin", "admin");
		mv.setViewName("admin/manageSelect");
		return mv;
	}
	
	@GetMapping("insert")
	public ModelAndView setInsert(HttpSession session)throws Exception{
		 ModelAndView mv = new ModelAndView();
			mv.setViewName("admin/insert");
			mv.addObject("admin", "admin");
		
			return mv;
			
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
		
		return "redirect:./manageNoticeList";
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
	
	@Autowired
	private QnaService qnaService;
	
	@ModelAttribute("board")
	public String getQnaBoard() {
		return "qna";
	}
	
	@GetMapping("manageQnaList")
	public String getManageQnaList(Pager pager, Model model)throws Exception{
		List<BoardVO> ar = qnaService.getManageQnaList(pager);
		model.addAttribute("manageQnaList", ar);
		model.addAttribute("pager", pager);
		for(BoardVO boardVO :ar) {
			QnaVO qnaVO = (QnaVO)boardVO;
			System.out.println(qnaVO.getDepth());
		}
		return "admin/manageQnaList";
	}

	@GetMapping("manageQnaSelect")
	public ModelAndView getManageQnaSelect(BoardVO boardVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		boardVO = qnaService.getManageQnaSelect(boardVO);
		mv.addObject("vo", boardVO);
		mv.setViewName("admin/manageQnaSelect");
		return mv;
	}
	
	@GetMapping("manageQnaInsert")
	public String setInsert(Model model)throws Exception{
		model.addAttribute("vo", new BoardVO());
		model.addAttribute("action", "manageQnaInsert");
		return "admin/manageQnaInsert";
	}
	
	@PostMapping("manageQnaInsert")
	public String setInsert(BoardVO boardVO, MultipartFile [] files)throws Exception{
		int result = qnaService.setInsert(boardVO, files);
		
		return "redirect:./manageQnaList";
	}

	@GetMapping("qnaUpdate")
	public String setUpdate(BoardVO boardVO, Model model)throws Exception{
		boardVO = qnaService.getSelect(boardVO);
		model.addAttribute("vo", boardVO);
		model.addAttribute("action", "qnaUpdate");
		return "admin/qnaUpdate";
		
	}
	
	@PostMapping("qnaUpdate")
	public String setUpdate(BoardVO boardVO, MultipartFile [] files)throws Exception{
		
		int result = qnaService.setUpdate(boardVO, files);
		
		return "redirect:./manageQnaList";
	}
	
	@PostMapping("QnaDelete")
	public String setQnaDelete(BoardVO boardVO) throws Exception{
		
		int result = qnaService.setQnaDelete(boardVO);
		
		return "redirect:./manageQnaList";
	}

	@GetMapping("reply")
	public String setReplyInsert(BoardVO boardVO, Model model)throws Exception{
		model.addAttribute("vo", boardVO);
		model.addAttribute("action", "reply");
		return "admin/reply";
	}
	
	@PostMapping("reply")
	public String setReplyInsert(BoardVO boardVO, MultipartFile [] files)throws Exception{
		
		int result = qnaService.setReplyInsert(boardVO, files);
	
		return "redirect:./manageQnaList";
	}	
	
	
	@PostMapping("qnaSummerFileDelete")
	public ModelAndView setQnaSummerFileDelete(String fileName)throws Exception{
		ModelAndView mv = new ModelAndView();
		boolean result = qnaService.setQnaSummerFileDelete(fileName);
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	@PostMapping("qnaSummerFileUpload")
	public ModelAndView setQnaSummerFileUpload(MultipartFile file)throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println("썸머 qna 파일 업로드");
		System.out.println(file.getOriginalFilename());
		String fileName = qnaService.setQnaSummerFileUpload(file);
		fileName = "../upload/qna/"+fileName;
		mv.addObject("result", fileName);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	//공지사항,질의응답 끝

	
}
