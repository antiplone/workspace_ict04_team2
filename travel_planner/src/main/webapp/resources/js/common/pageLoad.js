document.addEventListener("DOMContentLoaded", () => {

	recommend_list()
	
	
	// 댓글 목록
	function recommend_list(){ // (8)
		console.log("recommend_list()");
		$.ajax({
			url:'main.do', // 컨트롤러로 이동(9)
			type: 'POST',
			success : function(result){ // 콜백함수(13) => result는 comment_list
				$('#tableContentWrap').html(result);
			},
			error:function(j,t, errorThrown){
				alert(errorThrown);
			},
		});
	} 	
   	
})


   	