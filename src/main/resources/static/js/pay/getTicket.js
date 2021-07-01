

let isAlready;
let curstock = $('#curstock').val();
let ifstock;
let stock = 0;
var curpoint = parseInt($('#curpoint').val());

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
			 window.location.href = "/point/charge";
	    }else {
			alert("티켓구입을취소합니다");
	    	window.location.href = nexturl;
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

   var div2 = document.getElementsByClassName("point");

      function handleClick(event) {
        console.log(event.target);
        // console.log(this);
        // 콘솔창을 보면 둘다 동일한 값이 나온다

        console.log(event.target.classList);

        if (event.target.classList[1] === "clicked") {
          event.target.classList.remove("clicked");
        } else {
          for (var i = 0; i < div2.length; i++) {
            div2[i].classList.remove("clicked");
          }

          event.target.classList.add("clicked");
        }
      }

      function init() {
        for (var i = 0; i < div2.length; i++) {
          div2[i].addEventListener("click", handleClick);
        }
      }

      init();
//성공시 다음 url 가져오기 