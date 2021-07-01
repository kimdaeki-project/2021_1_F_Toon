/*관심웹툰 클릭시 로그인 확인*/
/*function checkLogin(){
	var username= '${loginUser}';
	if('${loginUser}' == null){
		alert("로그인 후 관심웹툰 설정이 가능합니다.");
		return false;
	}else{
		location.href=location.href;
	}
}*/

$('#check_favorite').click(function() {
	var username = $("#username").val();
	var toonNum = $("#toonNum").val();

	if (username == null) {
		alert("로그인 후 관심웹툰 설정이 가능합니다.");
		return false;
	} else {
		$.ajax({
			type: "POST",
			url: '../favorite/setFavorite',
			data: {
				"toonNum":toonNum,
				"username":username
			},
			success: function(result) {
				result = Number(result.trim());
				if (result > 0) {
					alert("관심웹툰을 등록하셨습니다.");
					$("#check_favorite").load(location.href=location.href);
				}else{alert("등록 실패")}
			}
		})
	}
})



