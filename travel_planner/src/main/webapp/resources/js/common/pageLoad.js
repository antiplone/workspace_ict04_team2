document.addEventListener("DOMContentLoaded", () => {

	maintop_list()
	
	// 댓글 목록
	function maintop_list(){ // (8)
		/*alert("maintop_list")*/
		$.ajax({
			url:'mainAction.do', // 컨트롤러로 이동(9)
			type: 'POST',
			success : function(result){ // 콜백함수(13) => result는 comment_list
				$('#maintopListWrap').html(result);
			},
			error:function(j,t, errorThrown){
				alert(errorThrown);
			},
		});
	} 	
   	
	bottomList()
	
	// 댓글 목록
	function bottomList(){ // (8)
		/*alert("mainReviewAction")*/
		$.ajax({
			url:'mainReviewAction.do', // 컨트롤러로 이동(9)
			type: 'POST',
			success : function(result){ // 콜백함수(13) => result는 comment_list
				$('#mainbottomListWrap').html(result);
			},
			error:function(j,t, errorThrown){
				alert(errorThrown);
			},
		});
	} 	
   	
})


   	