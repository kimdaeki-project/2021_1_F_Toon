
let isAlready;
let curstock = $('#curstock').val();
let ifstock;
let stock = 0;
let curpoint = parseInt($('#curpoint').val());

let toonNum = $('#toonNum').val()
let toonTitle = $('#toonTitle').val();
let contents = $('#contents').val();

let nexturl = "/toon/eachEpList?toonNum=" +toonNum;
$('#nextsuccess').val(nexturl); 
//alert($('#nextsuccess').val());
function isEmpty(str){
	if(typeof str == "undefined" || str == null || str == ""){
		 return true;
	}else{
		 return false ;
	}
           
}
//빈 곳에 값 넣기
function nvl(str, defaultStr){
         
        if(typeof str == "undefined" || str == null || str == "")
            str = defaultStr ;
         
        return str ;
}
if(isEmpty(curstock)){
	nvl(curstock, '0');
	//alert(curstock);
}else{
	
}
//parseInt로 변환
curstock = parseInt(curstock);
//alert(typeof curstock);

$('input[name=ifstock]').val(ifstock);
//radio 버튼 클릭시 결과 나오기  
$("input[name='point']").click(function(){
	point = parseInt(document.querySelector('input[name="point"]:checked').value,10);
	var totalPoint = curpoint - point;
	
	if(totalPoint < 0 ){
		{
		if (confirm("포인트가 모자랍니다 \n 충전페이지로 이동하시겠습니까?")) {
			 location.href = "/point/charge";
	    }else {
			alert("티켓구입을취소합니다");
	    	location.href = nexturl;
	    }
    }
		
	}else{
		//document.getElementById("total-point").innerText = totalPoint + ' P';
		stock = (point / 200);
		
		ifstock = stock + curstock;
		$('input[name=stock]').val(stock);
		$('input[name=ifstock]').val(ifstock);
		//contents 작성 ,입력
		contents = "소장권구매 : " + toonTitle  + " : " + stock + "개";
		$('#contents').val(contents);
	}
	
});
//성공시 다음 url 가져오기 