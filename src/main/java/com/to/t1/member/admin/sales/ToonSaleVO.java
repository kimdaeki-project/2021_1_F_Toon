package com.to.t1.member.admin.sales;

import java.sql.Date;
import com.to.t1.toon.ToonVO;
import lombok.Data;

@Data
public class ToonSaleVO{
	
	private ToonVO toonVO;
	
	private long Sum;
	
}
