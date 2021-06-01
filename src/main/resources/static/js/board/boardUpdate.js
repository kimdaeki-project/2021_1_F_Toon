/**
 * 
 */

$(".fileDelete").click(function(){
	//fileNum
	let check = confirm("삭제하십니까?"); //확인창
	
	if(check){
	let fileNum = $(this).attr("title");
	let obj = $(this);
	//noticeFileDelete
	$.ajax({
		url:"./fileDelete",
		type: "GET",
		data: {fileNum:fileNum},//앞엔 파라미터명 뒤엔 변수명
		success:function(result){
			result = result.trim();
			if(result>0){
				alert("삭제 성공");
				$(obj).parent().remove();
				count--;
			}else {
				alert("삭제 실패");
			}
		}
		
	});
	}
});

