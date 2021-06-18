package com.to.t1.toon;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.to.t1.member.MemberMapper;
import com.to.t1.member.MemberVO;
import com.to.t1.review.ReviewVO;
import com.to.t1.util.Pager;

@Service
public class ToonService {
	@Autowired
	private ToonMapper toonMapper;
	
	@Autowired
	private MemberMapper memberMapper;
	
	public List<ToonVO> getList()throws Exception{
		return toonMapper.getList();
	}
	
	public ToonVO getSelect(ToonVO toonVO) throws Exception{
		return toonMapper.getSelect(toonVO);
	}
	
	
	public long updateScore(ReviewVO reviewVO) throws Exception{
		return toonMapper.updateScore(reviewVO);
	}
	
	public long deleteScore(ReviewVO reviewVO) throws Exception{
		return toonMapper.deleteScore(reviewVO);
	}
	
	public List<ToonVO> toonDay(ToonVO toonVO,MemberVO memberVO) throws Exception{
		return toonMapper.toonDay(toonVO,memberVO);
	}
	
	public List<ToonVO> genre(ToonVO toonVO,MemberVO memberVO) throws Exception{
		return toonMapper.genre(toonVO,memberVO);
	}
	
	public List<ToonVO> ranking(ToonVO toonVO,MemberVO memberVO) throws Exception{
		return toonMapper.ranking(toonVO,memberVO);
	}
	
	public List<ToonVO> endRe(ToonVO toonVO,MemberVO memberVO) throws Exception{
		return toonMapper.endRe(toonVO,memberVO);
	}

	public List<ToonVO> toonDay(ModelAndView toonDay) {
		// TODO Auto-generated method stub
		return null;
	}

	
}