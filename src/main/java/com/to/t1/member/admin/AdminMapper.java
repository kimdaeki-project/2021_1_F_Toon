package com.to.t1.member.admin;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.to.t1.toon.ToonVO;
import com.to.t1.toon.eachep.EachEpVO;
import com.to.t1.util.Pager;

@Mapper
public interface AdminMapper {

	public List<ToonVO> getManageToonList(Pager pager) throws Exception;
	
	public Long getTotalCount(Pager pager) throws Exception;
	
	public ToonVO getManageToonSelect(ToonVO toonVO) throws Exception;
	
	public int setManageToonInsert(ToonVO toonVO) throws Exception;
	
	public int setFileInsert(AdminFileVO AdminFileVO) throws Exception;
	
	public int setManageToonUpdate(ToonVO toonVO) throws Exception;
	
	public int setManageToonDelete(ToonVO toonVO) throws Exception;

	public AdminFileVO getFileSelect(AdminFileVO AdminFileVO)throws Exception;
	
	public int setToonFileDelete(AdminFileVO AdminFileVO)throws Exception;
	
	/////////////////////////////////////////////////////////////////////////////
	
	public List<EachEpVO> getManageEachEpList(Pager pager) throws Exception;
	
	public EachEpVO getManageEachEpSelect(EachEpVO eachEpVO) throws Exception;
	
	public int setManageEachEpInsert(EachEpVO eachEpVO) throws Exception;
	
	public int setManageEachEpUpdate(EachEpVO eachEpVO) throws Exception;
	
	public int setManageEachEpDelete(EachEpVO eachEpVO) throws Exception;
	
	public int setEachEpFileDelete(AdminFileVO AdminFileVO)throws Exception;
}
