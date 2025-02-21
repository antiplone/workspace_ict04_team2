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
<link rel="stylesheet" href="${path}/resources/css/admin/ad_boardList.css">

	<!-- js -->
	<script src="https://kit.fontawesome.com/3f6025c3d2.js" crossorigin="anonymous"></script>
	<!-- (3-3-2). 햄버거버튼 - 자바스크립트 소스 연결 -->
	<!-- defer : html을 다 읽은 후에 자바스크립트를 실행한다. 페이지가 모두 로드된 후에 해당 외부 스크립트가 실행된다. -->
	<script src="${path}/resources/js/common/main.js" defer /></script>

	<script>
		document.addEventListener("DOMContentLoaded", () => {
		   	const btnEditFinish = document.querySelector("#btnEditFinish");
		   	const btnDelete = document.querySelector("#btnDelete");
		   	const btnList = document.querySelector("#btnList");
		  	// [게시글 목록 버튼] 클릭 시 컨트롤러의 목록으로 이동
	   		btnList.addEventListener('click', function(event){
				location.href="${path}/board_list.brl";
		    });
		   	
		   	// [게시글 수정완료 버튼] 클릭 시 수정내용 적용 
	   		btnEditFinish.addEventListener('click', function(event){
				document.editForm.action="${path}/board_updateAction.brl";
	   			document.editForm.submit();	
		    });
		   	
		   	// [게시글 삭제 버튼] 클릭 시 [게시글 수정삭제 화면]으로 이동(컨트롤러에서 패스워드 체크 후) 
	   		btnDelete.addEventListener('click', function(event){
				document.editForm.action="${path}/board_deleteAction.brl";
	   			document.editForm.submit();	
		    });
		});
	</script>
</head>
<body>

	<div class="wrap">
		<!-- header 시작 -->
		<div class="header_wrap">
			<%@ include file="/WEB-INF/views/common/header.jsp" %>
		</div>
		<!-- header 끝 -->
		
		<!-- 컨텐츠 시작 -->
			<div id="container"> 
				<div id="contents"> 
					<!-- 상단 중앙1 시작 -->
					<div id="section1">
						<h1 align="center">상세 페이지 수정</h1>
					</div>
					<!-- 상단 중앙1 종료 -->
					
					
					<!-- 상단 중앙2 시작 -->
					<div id="section2">
						<!-- 좌측 메뉴 시작 -->
						<%@ include file="/WEB-INF/views/admin/common/leftMenu.jsp" %>
						<!-- 좌측 메뉴 끝 -->
						
						<!-- 우측 화면 시작 -->
						<div id="right">
							<div class="table_div">
								<form name="editForm" method="post">
									
									<table>
										<tr>
											<th style="width:200px">글번호</th>
											<td style="width:200px">
											${dto.b_num}
											
											</td>
											<th style="width:200px">조회수</th>
											<td style="width:200px">${dto.b_readCnt}</td>
										</tr>
										<tr>
											<th style="width:200px">작성자</th>
											<td style="width:200px">${dto.b_writer}</td>
											<th style="width:200px">비밀번호</th>
											<td style="width:200px">
												<input style="width: 180px;" type="password" class="input" name="b_re_password" 
												id="b_password" size="30" value="${dto.b_password}" placeholder="비밀번호 입력" required autofocus/>
											</td>
										</tr>
										<tr>
											<th style="width:200px">글제목</th>
											<td colspan="3">
												<input style="width: 99%; border: none" type="text" class="input" name="b_title" 
												id="b_title" size="30" placeholder="글제목 입력" value="${dto.b_title}"  required autofocus/>
												
												<%-- <textarea rows="2" cols="93" id="b_title" name="b_title" style="resize:none">
													${dto.b_title}
												</textarea> --%>
											</td>
											
										</tr>
										<tr>
											<th style="width:200px">글내용</th>
											<td colspan="3">
												<textarea rows="5" cols="93" id="content" name="b_content">${dto.b_content}</textarea>
											</td>
										</tr>
										
										<tr>
											<th style="width:200px">작성일</th>
											<td colspan="3">${dto.b_regDate}</td>
										</tr>
										
										<tr>
											<td colspan="4" align="center">
												<input type="hidden" name="hiddenB_num" value="${dto.b_num}">
												<input type="button" class="inputButton" value="수정완료" id="btnEditFinish">
												<input type="button" class="inputButton" value="삭제" id="btnDelete">
												<input type="button" class="inputButton" value="목록" id="btnList">
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
		<!-- footer 시작 -->
		<div class="footer_wrap">
			<%@ include file="/WEB-INF/views/common/footer.jsp" %>
		</div>
		<!-- footer 끝 -->
		
	</div>

</body>
</html>