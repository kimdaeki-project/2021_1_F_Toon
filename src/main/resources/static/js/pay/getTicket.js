/**
 * 1. json 형식 : 
 {
	username : "username",
	toonNum : "toonNum", 
 	toonTitle : "toonTitle"
 	cur_point : "cur_point" , 
 	stock: "stock"
 	price : "200" 
 	sort :  1	
 	point   point
 	isAlready : "isAlready" // Ticket insert,update 구분 구별 
}
 */
 
//1. getTICKET.jsp 페이지에서 바로 가져오기 
let isAlready;
let curstock = $('#curstock').val();
let ifstock;
let stock = 0;
let curpoint = parseInt($('#curpoint').val());

let toonTitle = $('#toonTitle').val();
let contents = $('#contents').val();

if(curstock == ""){ 
	//값이 없음 
	isAlready = 0;
	curstock = 0;
	document.getElementsByName('curstock').value = 0; 
	isAlready = $('#isAlready').val(isAlready);
	$('input[name=curstock]').val(0);
	$('input[name=stock]').val(0);
	//alert("stock :"+ stock + "  curpoint : " + curpoint + " typeOf point :" + typeof curpoint + " typeOf stock :" + typeof stock);
}else{
	isAlready = 1;
	//alert(isAlready);
	curstock = parseInt($('#curstock').val());
	ifstock = curstock;
	isAlready = $('#isAlready').val(isAlready);
}
$('input[name=ifstock]').val(ifstock);
//radio 버튼 클릭시 결과 나오기  
$("input[name='point']").click(function(){
	point = parseInt(document.querySelector('input[name="point"]:checked').value,10);
	var totalPoint = curpoint - point;
	
	if(totalPoint < 0 ){
		alert("금액 모잘라 충전할래?");
		
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