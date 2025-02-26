<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<!-- css -->
<link rel="stylesheet" href="${path}/resources/css/common/header.css">
<link rel="stylesheet" href="${path}/resources/css/common/footer.css">
<link rel="stylesheet" href="${path}/resources/css/admin/ad_noticeList.css">

	<!-- js -->
	<script src="https://kit.fontawesome.com/3f6025c3d2.js" crossorigin="anonymous"></script>
	<!-- (3-3-2). 햄버거버튼 - 자바스크립트 소스 연결 -->
	<!-- defer : html을 다 읽은 후에 자바스크립트를 실행한다. 페이지가 모두 로드된 후에 해당 외부 스크립트가 실행된다. -->
	<script src="${path}/resources/js/common/main.js" defer /></script>

	<script>
		$(function(){
			$('#btnSave').on('click', function() {
				if(!$('#notice_password').val()){
					console.log($.trim($("#notice_password").val()))
		  			alert("비밀번호를 입력해주세요!!");
		  			$("#notice_password").focus();
		  		 	console.log($('#notice_password').val());
		  			event.preventDefault();
		  		 	return;
		  		} else if(!$('#notice_title').val()){
		  			alert("글제목을 입력해주세요!!");
		  		 	console.log($('#notice_title').val());
		  		 	event.preventDefault();
		  		 	return;
		  		} else if(!$('#notice_content').val()){
		  			alert("글내용을 입력해주세요!!");
		  		 	console.log($('#notice_content').val());
		  		 	event.preventDefault();
		  		 	return;
		  		} else{
					/* alert($("#NoticeForm").attr('action')); */
					$.ajax({
		   				url : "${path}/notice_insertAction.nt", // 컨트롤러로 이동(9)
		   				data : $('#NoticeForm').serialize(),
		   				type : 'POST',
		   				success : function(result) { // 콜백함수(13) => result는 comment_list
		   					homeMove("${path}/noticeList.nt");
		   				},
		   				error : function(j, t, errorThrown) {
		   					alert(errorThrown);
		   				},
		   			})
		  		}
			})
			
		/* 	function formAction(){
				$("#NoticeForm").attr("action","homeMove('${path}/notice_insertAction.nt');").submit();
			} */
		})
		
	</script>
</head>
<body>

	<div class="wrap noticeInsert">
	
		<!-- 컨텐츠 시작 -->
			<div id="container"> 
				<div id="contents"> 
					<!-- 상단 중앙1 시작 -->
					<div id="section1">
						<h1 align="center">공지사항 작성</h1>
					</div>
					<!-- 상단 중앙1 종료 -->
					
					
					<!-- 상단 중앙2 시작 -->
					<div id="section2">
						<!-- 우측 화면 시작 -->
						<div id="right">
							<div class="table_div">
								<form name="NoticeForm" method="post" id="NoticeForm">
									
									<table>
										<tr>
											<th>작성자</th>
											<td>${sessionScope.sessionID}</td>
											<th>비밀번호</th>
											<td>
												<input style="width: 95%;" type="password" class="input" name="notice_password" 
												id="notice_password" size="30" value="" placeholder="비밀번호 입력" pattern="[a-zA-Z0-9]"/>
											</td>
										</tr>
										<tr>
											<th>글제목</th>
											<td colspan="3">
												<input style="width: 99%; border: none" type="text" class="input" name="notice_title" 
												id="notice_title" size="30" placeholder="글제목 입력" />
											</td>
											
										</tr>
										<tr>
											<th>글내용</th>
											<td colspan="3">
												<textarea rows="5" cols="93" id="notice_content" name="notice_content"></textarea>
											</td>
										</tr>
										<tr>
											<td colspan="4" align="center">
												<input type="button" class="inputButton" value="작성완료" id="btnSave">
												<input type="reset" class="inputButton" value="초기화">
												<input type="button" class="inputButton" value="취소" id="btnCancel" onclick="homeMove('${path}/noticeList.nt')">
											</td>
										</tr>
									</table>
								</form>
							</div>
						</div>
						<!-- 우측 화면 끝 -->
					</div>
					<!-- 상단 중앙2 종료 -->
				</div>
			</div>
		
		<!-- 컨텐츠 끝 -->
			
	</div>

</body>
</html>