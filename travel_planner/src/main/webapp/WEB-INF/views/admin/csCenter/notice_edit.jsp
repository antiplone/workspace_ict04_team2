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
	$(function(){$('#btnEditFinish').on('click', function() {
			if($('#notice_password').val()){
				if($('#notice_password').val()==='${dto.noticePassword}'){
		   			alert("공지사항 수정을 완료하였습니다.");
		   			 $.ajax({
		   				url : "${path}/notice_updateAction.nt", // 컨트롤러로 이동(9)
		   				data : $('#editForm').serialize(),
		   				type : 'POST',
		   				success : function(result) { // 콜백함수(13) => result는 comment_list
		   					homeMove("${path}/noticeList.nt");
		   				},
		   				error : function(j, t, errorThrown) {
		   					alert(errorThrown);
		   				},
		   			})
	   			} else if($('#notice_password').val()!=='${dto.noticePassword}'){
	   				alert("비번번호가 일치하지 않습니다!!");
	   				return
	   			}
					return
			} else{
				alert("비번번호를 입력해주세요!");
				return
			}
			// $("#detailForm").attr("action", "${path}/password_chkAction.nt?noticeNum=${dto.noticeNum}");
			// $("#detailForm").submit; 
		});
	});
	
	 /*	document.addEventListener("DOMContentLoaded", () => {
		   	const btnEditFinish = document.querySelector("#btnEditFinish");
		   	const btnDelete = document.querySelector("#btnDelete");
		   	// const btnList = document.querySelector("#btnList");
		  	// [게시글 목록 버튼] 클릭 시 컨트롤러의 목록으로 이동
	  		// btnList.addEventListener('click', function(event){
			//	location.href="${path}/noticeList.nt";
		    // }); 
		   	
		   	// [게시글 수정완료 버튼] 클릭 시 수정내용 적용 
		   
		   	
		   	// [게시글 삭제 버튼] 클릭 시 [게시글 수정삭제 화면]으로 이동(컨트롤러에서 패스워드 체크 후) 
	   		btnDelete.addEventListener('click', function(event){
				document.editForm.action="${path}/notice_deleteAction.nt";
	   			document.editForm.submit();	
		    });
		});
		
		 //$(function(){$('#btnEditFinish').on('click', function() {

		//	homeMove('${path}/notice_updateAction.nt?noticeNum=${dto.noticeNum}&notice_password=${dto.noticePassword}&noticeContent=${dto.noticeContent}&noticeTitle=${dto.noticeTitle}');
	    //	});
	   	// }); 
	 */
	</script>
</head>
<body>

	<div class="idwrap noticeEdit"  id="noticeEdit">
		
		<!-- 컨텐츠 시작 -->
			<div id="container"> 
				<div id="contents"> 
					<!-- 상단 중앙1 시작 -->
					<div id="section1">
						<h1 align="center">공지사항 수정</h1>
					</div>
					<!-- 상단 중앙1 종료 -->
					
					
					<!-- 상단 중앙2 시작 -->
					<div id="section2">
						<!-- 우측 화면 시작 -->
						<div id="right">
							<div class="table_div">
								<form id="editForm" name="editForm" method="post">
									
									<table>
										<tr class="noticelefthead">
											<th class="first_th">글번호</th>
											<td style="">
												<input style="width: 95%;     pointer-events: none; outline: none; border: none; text-align: center;" type=""text" class="input" name="noticeNum" 
												id="noticeNum" size="30" value="${dto.noticeNum}" />
											</td>
											<th style="width:200px">조회수</th>
											<td style="width:200px">${dto.noticeReadCnt}</td>
										</tr>
										<tr>
											<th class="first_th">작성자</th>
											<td style="width:200px">${dto.noticeWriter}</td>
											<th style="width:200px">비밀번호</th>
											<td style="width:200px">
												<input style="width: 180px;" type="password" class="input" name="notice_password" 
												id="notice_password" size="30" value="${dto.noticePassword}" placeholder="비밀번호 입력" required autofocus/>
											</td>
										</tr>
										<tr class="class_title">
											<th class="first_th">글제목</th>
											<td colspan="3">
												<input style="width: 99%; border: none" type="text" class="input" name="noticeTitle" 
												id="noticeTitle" size="30" placeholder="글제목 입력" value="${dto.noticeTitle}"  required autofocus/>
												
												<%-- <textarea rows="2" cols="93" id="b_title" name="b_title" style="resize:none">
													${dto.b_title}
												</textarea> --%>
											</td>
											
										</tr>
										<tr class="class_content">
											<th class="first_th">글내용</th>
											<td colspan="3">
												<textarea rows="5" cols="93" id="noticeContent" name="noticeContent">${dto.noticeContent}</textarea>
											</td>
										</tr>
										
										<tr>
											<th class="first_th">작성일</th>
											<td colspan="3">${dto.noticeRegDate}</td>
										</tr>
										
										<tr>
											<td colspan="4" align="center">
												<input type="hidden" name="noticeNum" value="${dto.noticeNum}">
 												<%--<input type="button" class="inputButton" value="수정완료" id="btnEditFinish" onclick="homeMove('${path}/notice_updateAction.nt')"> --%>
												<input type="button" class="inputButton" value="수정완료" id="btnEditFinish" >
												<input type="button" class="inputButton" value="삭제" id="btnDelete" onclick="homeMove('${path}/notice_deleteAction.nt?noticeNum=${dto.noticeNum}')">
												<input type="button" class="inputButton" value="목록" id="btnList" onclick="homeMove('${path}/noticeList.nt')">
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