/*
 * var : 변수 재선언 가능/변수 재할당 가능/
 * let : 변수 재선언 불가/변수 재할당 가능/
 * const 변수 재선언 불가/변수 재선언 가능/
 
 *controller에 보낼 임의의 form 데이터 */
let curpoint = parseInt(document.getElementById("cur-point").value,10);
let chargePoint = parseInt(document.querySelector('input[name="point"]:checked').value,10);
var totalPoint = curpoint + chargePoint;
document.getElementById("total-point").innerText = totalPoint + ' P';

let orderName = document.getElementById("user-name").value;
let orderEmail = document.getElementById("user-email").value;
let orderPhone = document.getElementById("user-phone").value;


//radio 버튼 체크 여부 가져오기 
$("input[name='point']").click(function(){
	chargePoint = parseInt(document.querySelector('input[name="point"]:checked').value,10);
	var totalPoint = curpoint + chargePoint;
	document.getElementById("total-point").innerText = totalPoint + ' P';
});
	

//agree-charge시 버튼 활성화 하기
$("#agree-charge").click(function(){
	let agreechk=$("#agree-charge").prop("checked");

    if(agreechk){ 
        $("#start-charge").prop("disabled",false);
    }
    else{
        $("#start-charge").prop("disabled",true);
    }
});
/*iamport 실행하기 ajax 재전송*/
$("#start-charge").click(function () {
	//폼 정보 가져오기 (hidden 요소로 감춰 두기)
	//필요한 정보 : 충전 원하는 포인트 ,  email, name , phone, 
	var chargePoint = document.querySelector('input[name="point"]:checked').value;
	chargePoint = parseInt(chargePoint); //int로 변환
	
	
	var IMP = window.IMP;
	IMP.init('imp51768187');
	IMP.request_pay({
	pg: 'html5_inicis', 
	/* version 1.1.0부터 지원.
	'kakao':카카오페이,
	html5_inicis':이니시스(웹표준결제)
	'nice':나이스페이
	'jtnet':제이티넷
	'uplus':LG유플러스
	'danal':다날
	'payco':페이코
	'syrup':시럽페이
	'paypal':페이팔
	*/
	pay_method: 'card',
	/*
	'samsung':삼성페이,
	'card':신용카드,
	'trans':실시간계좌이체,
	'vbank':가상계좌,
	'phone':휴대폰소액결제
	*/
	merchant_uid:'merchant_' + new Date().getTime(),
	/*
	merchant_uid에 경우
	https://docs.iamport.kr/implementation/payment
	위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
	참고하세요.
	나중에 포스팅 해볼게요.
	*/
	name: 'HSTOON:ToonPoint',
	//결제창에서 보여질 이름
	amount: chargePoint, 
	//가격, 충전 할 금액 
	buyer_email: orderEmail,
	buyer_name: orderName,
	buyer_tel: orderPhone,
	buyer_addr: 'memberAddress',
	buyer_postcode: '07930',
	m_redirect_url: 'https://www.yourdomain.com/payments/complete'
	/*
	모바일 결제시,
	결제가 끝나고 랜딩되는 URL을 지정
	(카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
	*/
	}, function (rsp) {
		if ( rsp.success ) {
	        var msg = '결제가 완료되었습니다.';
	        msg += '고유ID : ' + rsp.imp_uid;
	        msg += '상점 거래ID : ' + rsp.merchant_uid;
	        msg += '결제 금액 : ' + rsp.paid_amount;
	        msg += '카드 승인번호 : ' + rsp.apply_num;
	        
	        var params = {"username" : orderName,"point": rsp.paid_amount}
	        
	        $.ajax({
	        	type : 'POST',
	        	data : params,
	        	url : "point/success",/* POST 요청하기*/ 
	        	dataType :'text',
	        	success : function(data) {
					alert("결제 및 결제검증완료(아직)");
			        alert("포인트 적립 완료 ");
					location.href="/";
				}, error: function(request, status, error) {
					alert("ajax전송 실패");
					alert("포인트 적립 실패 ");
				}
				}).done(function(data) {
		        	console.log(data);
		        	// 위의 rsp.paid_amount 와 data.response.amount를 비교한후 로직 실행 (import 서버검증)
		        	if(rsp.paid_amount == data.response.amount){
			        	alert("결제 및 결제검증완료(아직)");
			        } else {
		        		alert("결제 실패");
		        		}
		        	});
		        	}
		else {
			var msg = '결제에 실패하였습니다.';
			msg += '에러내용 : ' + rsp.error_msg;
		}
		alert(msg);
	});
});	
