package com.to.t1.kaka0ppay;

import java.util.Date;

import lombok.Data;

//결제 승인과 관련된 VO : 충전 결과 내역
@Data
public class PayApprovalVO {
	
	 //response
    private String aid, tid, cid, sid;
    private String partner_order_id, partner_user_id, payment_method_type;
    private AmountVO amount;
    private CardVO card_info;
    private String item_name, item_code, payload;
    private Integer quantity, tax_free_amount, vat_amount;
    private Date created_at, approved_at;
    
}
