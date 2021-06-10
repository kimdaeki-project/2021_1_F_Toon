package com.to.t1.toon;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.to.t1.review.ReviewVO;
import com.to.t1.util.Pager;

@Mapper
public interface ToonMapper {

	public List<ToonVO> getList()throws Exception;
	public Long getTotalCount(Pager pager)throws Exception;
	public ToonVO getSelect(ToonVO toonVO)throws Exception;
	
	public long updateScore(ReviewVO reviewVO)throws Exception;
	public long deleteScore(ReviewVO reviewVO)throws Exception;
	public long setHitUpdate(ToonVO toonVO)throws Exception;
	
	//20210604:함수이름 변경(혜린)
	public long setInsertToon(ToonVO toonVO)throws Exception;
	public long setUpdateToon(ToonVO toonVO)throws Exception;
	public long setDeleteToon(ToonVO toonVO)throws Exception;
}
