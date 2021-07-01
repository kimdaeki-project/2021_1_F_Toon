/**
 * 
 */



/*$(function(){ 


$(function(){ 

			$('.pay').click(function() {
				let toonNum=$(this).attr("data-toonNum");		
				let eachEpNum=$(this).attr("data-eachEpNum");
		
				var result = confirm('소장권을 사용하시겠습니까?'); 
				if(result) {
					
					
					alert("소장권 사용");  
					location.href="eachEpSelect2?toonNum="+toonNum+"&eachEpNum="+eachEpNum;
					
					
					
				} else { 		
				alert("구매가 취소 됩니다.");	
				return false;				
		} }); 
		});
		*/
		
		
		
/*$(function(){ 		
$('#pay').click(function(){
	alert("로그인이 필요한 서비스 입니다. ")
	location.replace ="/member/login";
	return false;
});
});*/




$(document).ready(function(){ 
			$('#pay').click(function() {
				var result = confirm('200p가 소모됩니다 열람하시겠습니까?'); 
				if(result) {  
					
					
					
					
						
				} else { 
					
					
					
					
				alert("no");
					
					
					
					
		} }); 
		});
		
