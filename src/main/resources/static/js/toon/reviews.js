var toonNum = $("#toonNum").val();
var epNum = $("#epNum").val();
var eachEpNum = $("#eachEpNum").val();
var rating = Number($('#rating').find("input[name='star']:checked").val());
var comments = $("#comments").val();


/*별점, 댓글 저장*/
$(function() {
	$('#save').click(function() {
		/* 댓글 최소 글자수 제한  */
		if ($('#comments').val().length < 5) {
			alert("5자 이상 입력해주세요.");
			$('#comments').val($('#comments').val().substring(0, 5));
		} else {
			var rating = Number($('#rating').find("input[name='star']:checked").val());
			var comments = $("#comments").val();

			if (isNaN(rating) == true) {
				alert("별점을 입력해주세요.");
			} else {
				$.ajax({
					type: "POST",
					url: '../review/setReview',
					data: {
						"toonNum": toonNum,
						"epNum": epNum,
						"rating": rating,
						"comments": comments,
						"eachEpNum": eachEpNum
					},
					success: function(result) {
						$(".reviewList").html(result);
						alert("별점과 댓글을 등록하셨습니다. 등록해 주셔서 감사합니다.");
					},
					error: function(result) {
						alert("등록에 실패하셨습니다.");
					}
				})
			}
		}
	})
});

/* 별점, 댓글 삭제 */
$(function() {
	$('.reviewList').on("click",".delReview",function() {
		var revNum = $(this).val();

		if(confirm("정말 삭제하시겠습니까?") == true){
			$.ajax({
			type: "POST",
			url: '../review/delReview',
			data: {
				"revNum": revNum
			},
			success: function(result) {
				result = Number(result.trim());
				if (result != null) {
					alert("댓글이 삭제되었습니다.");
					$("#review_page").load(location.href = location.href);
				}else {
					alert("삭제에 실패하였습니다. 다시 시도해 주세요");
				}
			}

		})
		}else{
			return false;
		}

		
	})
});