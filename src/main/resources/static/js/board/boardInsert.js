/**
 * 
 */

$("#btn").click(function(){
	
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
		swal("Good job!", "You clicked the button!", "success");
	}else {
		swal("필수 요소를 입력하세요");
	}
	
});

/* $("#add").click(function(){
	
	//for(let i=1;i<6;i++)
	$("#files").prepend('');
});
*/
