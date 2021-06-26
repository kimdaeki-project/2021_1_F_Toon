/**
 * 
 */

$("#epSumImg").summernote({
			height:500,
			placeholder: '썸네일이미지를 넣어주세요',
			callbacks: {
				onImageUpload: function(files) {
				   // upload image to server and create imgNode...
				   //$summernote.summernote('insertNode', imgNode);
				   uploadFile(files);
				   
				 }, // -- onImageUpload
				onMediaDelete: function(files){
					deleteFile(files);
				}
					
			}// -- callbacks
});

function deleteFile(files){
	let fileName = $(files[0]).attr("src");
	fileName = fileName.substring(fileName.lastIndexOf('/')+1);
	$.post("eachEpSummerFileDelete", {fileName:fileName}, function(result){
		console.log(result);
	});
}


function uploadFile(files) {
	const formData = new FormData();//Form 태그 생성
	formData.append('file', files[0]); //input type="file" name="file"
	let fileName="";
	$.ajax({
		type: "POST",
		url: "./eachEpSummerFileUpload",
		data:formData,
		enctype:"multipart/form-data",
		cache:false,
		processData:false,
		contentType:false,
		success:function(result){
			fileName=result.trim();
			$("#epSumImg").summernote('insertImage', fileName);
		} 
		
	});		
}

/**
 * 
 */

$("#epContentImg").summernote({
			height:500,
			placeholder: '회차내용이미지를 넣어주세요',
			callbacks: {
				onImageUpload: function(files) {
				   // upload image to server and create imgNode...
				   //$summernote.summernote('insertNode', imgNode);
				   uploadFile(files);
				   
				 }, // -- onImageUpload
				onMediaDelete: function(files){
					deleteFile(files);
				}
					
			}// -- callbacks
});

function deleteFile(files){
	let fileName = $(files[0]).attr("src");
	fileName = fileName.substring(fileName.lastIndexOf('/')+1);
	$.post("eachEpSummerFileDelete", {fileName:fileName}, function(result){
		console.log(result);
	});
}


function uploadFile(files) {
	const formData = new FormData();//Form 태그 생성
	formData.append('file', files[0]); //input type="file" name="file"
	let fileName="";
	$.ajax({
		type: "POST",
		url: "./eachEpSummerFileUpload",
		data:formData,
		enctype:"multipart/form-data",
		cache:false,
		processData:false,
		contentType:false,
		success:function(result){
			fileName=result.trim();
			$("#epContentImg").summernote('insertImage', fileName);
		} 
		
	});		
}



