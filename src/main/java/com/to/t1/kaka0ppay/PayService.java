package com.to.t1.kaka0ppay;

import java.net.URI;
import java.net.URISyntaxException;
 
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;
 
import lombok.extern.java.Log;

@Service
@Log
public class PayService {
	//1. 일단을 카카오페이 서비스 
	 private static final String HOST = "https://kapi.kakao.com";
	    
	    private PayReadyVO PayReadyVO;
	    private PayApprovalVO PayApprovalVO;
	    
	    public String kakaoPayReady() {
	 
	        RestTemplate restTemplate = new RestTemplate();
	 
	        // 서버로 요청할 Header
	        HttpHeaders headers = new HttpHeaders();
	        headers.add("Authorization", "KakaoAK " + "b869402576b56c83ad83badfa54958fd");
	        headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
	        headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
	        
	        // 서버로 요청할 Body
	        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
	        params.add("cid", "TC0ONETIME"); //아직은 테스트 cid
	        params.add("partner_order_id", "Hyelin"); 
	        params.add("partner_user_id", "Hyelin");
	        params.add("item_name", "충전");
	        params.add("quantity", "1");
	        params.add("total_amount", "2200");
	        params.add("tax_free_amount", "200");
	        params.add("approval_url", "http://localhost:85/pay/chargeSuccess");
	        params.add("cancel_url", "http://localhost:85/pay/chargeCancel");
	        params.add("fail_url", "http://localhost:85/pay/chargeFail");
	 
	        HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
	 
	        try {
	            PayReadyVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/ready"), body, PayReadyVO.class);
	            
	            log.info("" + PayReadyVO);
	            
	            return PayReadyVO.getNext_redirect_pc_url();
	 
	        } catch (RestClientException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        } catch (URISyntaxException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        
	        return "/pay";
	        
	    }
	    
	    public PayApprovalVO kakaoPayInfo(String pg_token) {
	 
	        log.info("KakaoPayInfoVO............................................");
	        log.info("-----------------------------");
	        
	        RestTemplate restTemplate = new RestTemplate();
	 
	        // 서버로 요청할 Header
	        HttpHeaders headers = new HttpHeaders();
	        headers.add("Authorization", "KakaoPay " + "b869402576b56c83ad83badfa54958fd");
	        headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
	        headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
	 
	        // 서버로 요청할 Body
	        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
	        params.add("cid", "TC0ONETIME"); //아직은 테스트 cid
	        params.add("tid", PayReadyVO.getTid());
	        params.add("partner_order_id", "1001");
	        params.add("partner_user_id", "test");
	        params.add("pg_token", pg_token);
	        params.add("total_amount", "2200");
	        
	        HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
	        
	        try {
	            PayApprovalVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/approve"), body, PayApprovalVO.class);
	            log.info("" + PayApprovalVO);
	          
	            return PayApprovalVO;
	        
	        } catch (RestClientException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	            return null;
	        } catch (URISyntaxException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	            return null;
	        } 
	        
	    }

}

//가맹점 식별 코드 imp51768187
//REST API 키 8955862071146697

