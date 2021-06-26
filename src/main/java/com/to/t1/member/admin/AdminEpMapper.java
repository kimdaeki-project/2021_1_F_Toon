package com.to.t1.member.admin;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.to.t1.toon.ToonVO;
import com.to.t1.toon.eachep.EachEpVO;
import com.to.t1.util.Pager;

@Mapper
public interface AdminEpMapper {
	
	public List<EachEpVO> getManageEachEpList(Pager pager) throws Exception;
	
	public EachEpVO getManageEachEpSelect(EachEpVO eachEpVO) throws Exception;
	
	public int setManageEachEpInsert(EachEpVO eachEpVO) throws Exception;
	
	public int setManageEachEpUpdate(EachEpVO eachEpVO) throws Exception;
	
	public int setManageEachEpDelete(EachEpVO eachEpVO) throws Exception;
	
	public int setEachEpFileDelete(AdminFileVO AdminFileVO)throws Exception;
	
	public Long getTotalCount(Pager pager) throws Exception;
	
	public int setFileInsert(AdminFileVO AdminFileVO) throws Exception;
	
	public AdminFileVO getFileSelect(AdminFileVO AdminFileVO)throws Exception;
}
