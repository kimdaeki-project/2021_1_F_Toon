let password = document.getElementById("password");
let newpassword = document.getElementById("newpassword");
let newpassword2 = document.getElementById("newpassword2");
let passwordCheck = document.getElementById("passwordCheck");

$("#agree-charge").click(function(){
	let agreechk=$("#agree-charge").prop("checked");

    if(agreechk){ 
        $("#start-charge").prop("disabled",false);
    }
    else{
        $("#start-charge").prop("disabled",true);
    }
});


password.addEventListener("blur", function(){

	let message =  '\u00A0'+ '\u00A0'+ '\u00A0'+ '\u00A0'+"8글자 미만입니다";
	let c = "r1";
	if(password.value.length>7){
		
		message = '\u00A0'+ '\u00A0'+ '\u00A0'+ '\u00A0'+"8글자 이상입니다";
		c= "r2";
		pwCheckResult=true;
	}
	
	let pwResult = document.getElementById("pwResult");
	pwResult.innerHTML=message;
	pwResult.setAttribute("class", c);
	
});


newpassword.addEventListener("blur", function(){

	let message = '\u00A0'+ '\u00A0'+ '\u00A0'+ '\u00A0'+"8글자 미만입니다";
	let c = "r1";
	if(newpassword.value.length>7){
		
		message = '\u00A0'+ '\u00A0'+ '\u00A0'+ '\u00A0'+"8글자 이상입니다";
		c= "r2";
		pwCheckResult=true;
	}
	
	let pwResult2 = document.getElementById("pwResult2");
	pwResult2.innerHTML=message;
	pwResult2.setAttribute("class", c);
	
});

newpassword2.addEventListener("blur", function(){

	let message = '\u00A0'+ '\u00A0'+ '\u00A0'+ '\u00A0'+"8글자 미만입니다";
	let c = "r1";
	if(newpassword2.value.length>7){
		
		message = '\u00A0'+ '\u00A0'+ '\u00A0'+ '\u00A0'+"8글자 이상입니다";
		c= "r2";
		pwCheckResult=true;
	}
	
	let pwResult3 = document.getElementById("pwResult3");
	pwResult3.innerHTML=message;
	pwResult3.setAttribute("class", c);
	
});

passwordCheck.addEventListener("blur", function(){

	let message = '\u00A0'+ '\u00A0'+ '\u00A0'+ '\u00A0'+"8글자 미만입니다";
	let c = "r1";
	if(passwordCheck.value.length>7){
		
		message = '\u00A0'+ '\u00A0'+ '\u00A0'+ '\u00A0'+"8글자 이상입니다";
		c= "r2";
		pwCheckResult=true;
	}
	
	let pwResult4 = document.getElementById("pwResult4");
	pwResult4.innerHTML=message;
	pwResult4.setAttribute("class", c);
	
});

	
	function change(){
		var password = $("#password").val();
		var newpassword = $("#newpassword").val();
		var newpassword2 = $("#newpassword2").val();
		var newpasswordTrim= $.trim(newpassword);
		
		if(confirm("정말 변경하시겠습니까?") == true){
	
			if(newpasswordTrim.length>17||newpasswordTrim.length<7||newpasswordTrim==null){
		     alert( "패스워드는 8글자 이상 16글자 이하입니다.");
		     
			}else
				
				$.ajax({
		   	         type : 'POST',
		   	         url  : 'changePassword',
		   	         data : {
		   	            "password" : password,
		   	            "newpassword" : newpassword,
		   	            "newpassword2" : newpassword2,
	         		 },
	         		 
	         		 
	         		 success : function(msg) {
	                    alert(msg);
	                    location.href="./myPage"

	         		 }
	         		 
				});
			
			
		}
	};

	
function usernameDelete(){
		   var passwordCheck = $("#passwordCheck").val();
		   
		   if(confirm("정말 회원을 탈퇴 하시겠습니까?") == true){
		      
		   
		      $.ajax({
		         type : 'GET',
		         url : '../member/memberDelete',
		         data : {
		            "password" : passwordCheck,
		         },

		         dataType :'text',
		         
		         success : function(data) {
		             
		            swal(data);
		            
		            if(data=="탈퇴 되었습니다."){
		            location.href="./logout"
		            }
		          },
		         
		          error:function(request, status, error){
		             swal(error);
		          },

		      });
		   }else{
		      return;
		   }
		   
		      
		}