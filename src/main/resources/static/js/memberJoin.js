let id = document.getElementById("id");
let pw = document.getElementById("pw");
let pw2 = document.getElementById("pw2");
let btn = document.getElementById("btn");
let etc = document.getElementsByClassName("etc");

let idCheckResult = false; // id check 결과
let pwCheckResult = false; 
let pwEqualResult = false; 
let etcResult=true		   // name, email, phone 결과



// PW EQUAL CHECK **********************************
pw2.addEventListener("blur", function(){
	let message  = "비밀번호가 일치합니다.";
	let c = "r2";
	
	if(pw.value != pw2.value){
		pw2.value="";
		message= "비밀번호가 일치하지 않습니다."
		c= "r1";
	}else {
		pwEqualResult=true;
	}
	
	pwResult2.innerHTML=message;
	pwResult2.setAttribute("class", c);
});

pw.addEventListener("change", function(){
	pw2.value="";
});

// **** PW CHECK *********************************

pw.addEventListener("blur", function(){

	let message = "8글자 미만입니다";
	let c = "r1";
	if(pw.value.length>7){
		
		message = "8글자 이상입니다"
		c= "r2";
		pwCheckResult=true;
	}
	
	let pwResult = document.getElementById("pwResult");
	pwResult.innerHTML=message;
	pwResult.setAttribute("class", c);
	
});

// ID Check *********************************
id.addEventListener("blur", function(){
	let message = "6글자 미만입니다";
	let c = "r1"
	if(id.value.length>5){
		message = "6글자 이상 입니다";
		c = "r2";
		idCheckResult=true;
	} else {
		idCheckResult = false;
	}
	
	let idResult = document.getElementById("idResult");
	idResult.innerHTML=message;
	idResult.setAttribute("class", c);
	
});
// ***************************************************

btn.addEventListener("click", function(){
	for(let e of etc){
		if(e.value == ""){
			etcResult=false;
			break;
		}
	}
	
	//조건이 만족하면
	if(idCheckResult && pwCheckResult && pwEqualResult && etcResult){
		let frm = document.getElementById("frm");
		frm.submit();
	}else {
		alert("필수 항목을 입력하세요");
	}
});


// Id 중복 확인
$("#id").blur(function(){
   let id = $("#id").val();
   $.get("./memberIdCheck?id="+id, function(result){
	  result = result.trim();
	  let str = "사용가능한 ID 입니다.";
	  if(result=='0'){
		str="중복 ID 입니다.";
	}
	
	$("#idCheckResult").html(str);

   });
});

//이메일
function sendMail(){
   var email = $("#email").val(); //사용자의 이메일 입력값.
   var test = email.indexOf("@");
   
   if (email == "") {
      alert("메일 주소가 입력되지 않았습니다.");
   }else if(test==-1){
      
      alert("메일 형식이 잘못되었습니다.");
   } 
   else {
      $.ajax({
         type : 'GET',
         url : 'CheckMail',
         data : {
            "mail" : email,
         },
         contentType: "application/json; charset=utf-8;",
         dataType :'json',

      });
      alert("인증번호가 전송되었습니다.") 
      isCertification=true; //추후 인증 여부를 알기위한 값
   }
      
}
