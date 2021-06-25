/**
 * 
 */


$(function(){ 
			$('.pay').click(function() {
				let toonNum=$(this).attr("data-toonNum");
				
				let eachEpNum=$(this).attr("data-eachEpNum");
				
				var result = confirm('소장권을 사용하시겠습니까?'); 
				if(result) {
					
					
					alert("소장권 사용");  
					location.href="eachEpSelect?toonNum="+toonNum+"&eachEpNum="+eachEpNum;
					
									
				} else { 		
				alert("구매가 취소 됩니다.");	
				return false;				
		} }); 
		});
		
		


