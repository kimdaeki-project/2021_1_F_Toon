/**
 * 
 */

let count=$("#files").attr("noticeTitle");
$("#add").click(function(){
	if(count < 5){
		let contents = $("#sample").html();
		$("#files").append(noticeContents);
		count++;//count=count+1;
	}else {
		alert("최대 5개만 가능");
	}
});


$("#del").click(function(){
	$("#files").empty();
});

//이벤트 전달(위임)
$("#files").on("click", ".delete", function(){
	$(this).parent().remove();
	count--;
});
