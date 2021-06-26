/**
 * 
 */
var boNum = $("#boNum").val(); //게시글 번호
 
$('[name=commentInsertBtn]').click(function(){ //댓글 등록 버튼 클릭시 
    var insertData = $('[name=commentInsertForm]').serialize(); //commentInsertForm의 내용을 가져옴
    commentInsert(insertData); //Insert 함수호출(아래)
});
 
//댓글 목록 
function commentList(){
    $.ajax({
        url : '/comment/commentList',
        type : 'get',
        data : {'boNum':boNum},
        success : function(data){
            var a =''; 
            $.each(data, function(key, value){ 
                a += '<div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
                a += '<div class="commentInfo'+value.coNum+'">'+'작성자 : '+value.username;
                a += '&emsp;&emsp;&emsp;&emsp;<a onclick="commentUpdate('+value.coNum+',\''+value.commentContents+'\');"><button class="btn btn-secondary" type="button"> 수정 </button> </a>';
                a += '<a onclick="commentDelete('+value.coNum+');"><button class="btn btn-secondary" type="button"> 삭제 </button> </a> </div><br>';
                a += '<div class="commentContent'+value.coNum+'"> <p> '+value.commentContents +'</p>';
                a += '</div></div>';
            });
            $(".commentList").html(a);
        }
    });
}
 
//댓글 등록
function commentInsert(insertData){
	 
    $.ajax({
        url : '/comment/insert',
        type : 'post',
        data : insertData,
        success : function(data){
            if(data == 1) {
                commentList(); //댓글 작성 후 댓글 목록 reload
                $('[name=commentContents]').val('');
            }
        }
    });
}

//댓글 수정 - 댓글 내용 출력을 input 폼으로 변경 
function commentUpdate(coNum, commentContents){
	
    var a ='';
    
    a += '<div class="input-group">';
    a += '<input type="text" class="form-control" name="commentContents_'+coNum+'" value="'+commentContents+'"/>';
    a += '<span class="input-group-btn"><button class="btn btn-default" type="button" onclick="commentUpdateP('+coNum+');">수정</button> </span>';
    a += '</div>';
    
    $('.commentContent'+coNum).html(a);

}

//댓글 수정
function commentUpdateP(coNum){
    var updateContent = $('[name=commentContents_'+coNum+']').val();
    
    $.ajax({
        url : '/comment/update',
        type : 'post',
        data : {'commentContents' : updateContent, 'coNum' : coNum},
        success : function(data){
            if(data == 1) commentList(boNum); //댓글 수정후 목록 출력 
        }
    });
}
 
//댓글 삭제
function commentDelete(coNum){
    $.ajax({
        url : '/comment/delete/'+coNum,
        type : 'post',
        success : function(data){
            if(data == 1) commentList(boNum); //댓글 삭제후 목록 출력 
        }
    });
}
 
$(document).ready(function(){
    commentList(); //페이지 로딩시 댓글 목록 출력 
});