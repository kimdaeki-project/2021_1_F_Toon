package com.to.t1.pay;

import java.util.Date;

import lombok.Data;

//kakao 요청을 위한 데이터 클래스 
@Data
public class PayReadyVO {
	
    private String tid, next_redirect_pc_url;
    private Date created_at;
}
