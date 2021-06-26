let id = document.getElementById("id");
let pw = document.getElementById("pw");
let pw2 = document.getElementById("pw2");
let btn = document.getElementById("btn");
let etc = document.getElementsByClassName("etc");
var isCertification = false;
let idCheckResult = false; // id check 결과
let pwCheckResult = false; 
let pwEqualResult = false; 
let etcResult=true		   // name, email, phone 결과

function inputPhoneNumber(obj) {
	
	$( 'input' ).on("blur keyup", function() {
		$(this).val( $(this).val().replace( /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '' ) );
	});
	
    var number = obj.value.replace(/[^0-9]/g, "");
    var phone = "";

    if(number.length < 4) {
        return number;
    } else if(number.length < 7) {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3);
    } else if(number.length < 11) {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3, 3);
        phone += "-";
        phone += number.substr(6);
    } else {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3, 4);
        phone += "-";
        phone += number.substr(7);
    }
    obj.value = phone;
}

//function inputPhoneNumber(){
//	alert("zz")
//}

function  handlerNum(){
 E = window.event;
 if(E.keyCode >47 && E.keyCode <58){   
  if(E.keyCode == 48){
   if(document.eduReg.ATTENDANT.value == "" ) E.returnValue=false;
   else return;
   }else return;
 }else{
  E.returnValue=false;
 }
}


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
	
	let id = $("#id").val();
	let idTrim = $.trim(id);
	let message = "6글자 미만입니다";
	let c = "r1"
	if(idTrim.length>5){
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
		swal("필수 항목을 입력하세요");
	}
});


// Id 중복 확인
function id11(){
  
 let id = $("#id").val();
 let idTrim = $.trim(id);
 
  if(idTrim.length>13||idTrim.length<6||id==null){
      alert("아이디는 6글자 이상 12글자 이하로 만드십시오.")
   }else{   
	
	$.ajax({
      type : 'POST',
      url : 'memberJoinCheck',
      data : {
         "username" : id,
      },
	
	  dataType :'text',
      
      success : function(message) {
        
         swal(message);
           
       }

   })
	
	
}
 
};


//이메일
var CheckNum;

function sendMail(){
   var email = $("#email").val(); //사용자의 이메일 입력값.
   var test = email.indexOf("@");
   
   if (email == "") {
      swal("메일 주소가 입력되지 않았습니다.", "You clicked the button!" , "warning");
   }else if(test==-1){
      
      swal("메일 형식이 잘못되었습니다.", "You clicked the button!" , "warning");
   } 
   else {
      $.ajax({
         type : 'GET',
         url : 'CheckMail',
         data : {
            "email" : email,
         },

         dataType :'text',
         
         success : function(data) {
              CheckNum = data;
           alert(CheckNum);
              
          },   
          error:function(request, status, error){
             alert(error);
          },

      });
      swal("인증번호가 전송되었습니다.")
      
      //추후 인증 여부를 알기위한 값
   }
      
}
 
function emailCheck(){
    var emailNum = $("#emailNum").val();
       if (emailNum == CheckNum) {   //인증 키 값을 비교를 위해 텍스트인풋과 벨류를 비교
         swal("인증성공!", "You clicked the button!", "success")
         isCertification = true;
       } else {   
          swal("인증실패","You clicked the button!" , "warning");
          isCertification = false;
       }

 };

 

 

