let pw = document.getElementById("pw");

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
		         
		          error:function(requeest, status, error){
		             swal(error);
		          },

		      });
		   }else{
		      return;
		   }
		   
		      
		}