package com.to.t1.eachEp;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.to.t1.toon.eachep.EachEpMapper;
import com.to.t1.toon.eachep.EachEpVO;
import com.to.t1.util.Pager;
@SpringBootTest
class EachEpTest {

	@Autowired
	private EachEpMapper eachEpMapper;
	
	
	@Test
	public void getListTest() throws Exception{
		Pager pager= new Pager();
		pager.setToonNum(1);
		pager.setCurPage(1L);
		pager.makeRow();
		
		System.out.println(pager.getToonNum());
		System.out.println(pager.getStartRow());
		System.out.println(pager.getPerPage());
		
		
		List<EachEpVO> ar= eachEpMapper.getList(pager);
		assertNotEquals(0, ar.size());
		
	}

}
