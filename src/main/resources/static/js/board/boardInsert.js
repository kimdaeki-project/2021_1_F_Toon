/**
 * 
 */

$("#btn").click(function(){
	/*let writer = $("#writer").val() != "";
	let title = $("#title").val().length != 0;
	let contents = $("#contents").val().length != 0;*/ //id로 가져올때 쓰는것
	let result = true;
	
	$(".myCheck").each(function(s1, s2, s3){
		console.log(s1);
		console.log($(s2).val());
		console.log($(s3).val());
		console.log($(this).val());
		if($(this).val()==""){
			result = false;
		}
	});
	
	if(result) {
		$("#frm").submit(); // ()에 아무것도 안쓰면 강제 이벤트 실행
	}else {
		alert("필수 요소를 입력하세염");
	}
	
});

/* $("#add").click(function(){
	
	//for(let i=1;i<6;i++)
	$("#files").prepend('');
});
*/
