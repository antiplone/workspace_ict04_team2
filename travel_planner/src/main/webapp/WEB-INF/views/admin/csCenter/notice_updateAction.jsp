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
		document.addEventListener("DOMContentLoaded", () => {
			/* comment_list() */
			
		   	const btnEdit = document.querySelector("#btnEdit"); 
		   	const btnList = document.querySelector("#btnList");
		   	
		   	// [게시글 목록 버튼] 클릭 시 컨트롤러의 목록으로 이동
	   		btnList.addEventListener('click', function(e){
				location.href="${path}/noticeList.nt";
		    });
		   	
		   	// [게시글 수정삭제 버튼] 클릭 시 [게시글 수정삭제 화면]으로 이동(컨트롤러에서 패스워드 체크 후) 
	   		/* btnEdit.addEventListener('click', function(e){
				document.detailForm.action="${path}/password_chkAction.nt?noticeNum=${dto.noticeNum}&notice_password=${dto.noticePassword}";
	   			document.detailForm.submit();	
		    }); */
		   	
   		});
		
   		$(function(){$('#btnEdit').on('click', function() {
	   			if($('#notice_password').val()){
	   				if($('#notice_password').val()==='${dto.noticePassword}'){
			   			alert("야야");
		   				homeMove('${path}/password_chkAction.nt?noticeNum=${dto.noticeNum}&notice_password=${dto.noticePassword}');
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

</script>
<% 
	int nrcnt = Integer.parseInt(request.getParameter("noticeReadCnt"));
	int cnt1 = nrcnt + 1;
%>	    
</head>
<body>
	<div class="idwrap noticeDetail" id="noticeDetail">
		<!-- 컨텐츠 시작 -->
			<div id="container"> 
				<div id="contents"> 
					<!-- 상단 중앙1 시작 -->
					<div id="section1">
						<h1 align="center">상세 페이지</h1>
					</div>
					<!-- 상단 중앙1 종료 -->
					
					<!-- 상단 중앙2 시작 -->
					<div id="section2">
						
						<!-- 우측 화면 시작 -->
						<div id="right">
							<div class="table_div">
								<form name="detailForm" method="post">
									<table>
										<tr>
											<th class="first_th">글번호</th>
											<td style="width:200px">
											${dto.noticeNum}
											</td>
											<th style="width:200px">조회수</th>
											<td style="width:200px">
												<%=cnt1%>
											</td>
										</tr>
										<tr>
											<th class="first_th">작성자</th>
											<td style="width:200px">${dto.noticeWriter}</td>
											<th style="width:200px">비밀번호</th>
											<td style="width:200px">
												<input style="width: 180px;" type="password" class="input" name="notice_password" 
												id="notice_password" size="30" placeholder="비밀번호 입력" required autofocus/>
												
												<c:if test="${param.message == 'error'}">
													<b><span style="color:red">비밀번호 불일치!!</span></b>				
												</c:if>
											</td>
										</tr>
										<tr class="class_title">
											<th class="first_th">글제목</th>
											<td colspan="3">${dto.noticeTitle}</td>
										</tr>
										<tr class="class_content">
											<th class="first_th">글내용</th>
											<td colspan="3">${dto.noticeContent}</td>
										</tr>
										
										<tr>
											<th class="first_th">작성일</th>
											<td colspan="3">${dto.noticeRegDate}</td>
										</tr>
										
										<tr>
											<td colspan="4" align="center">
												<input type="hidden" name="hiddenN_num" value="${dto.noticeNum}">
												<input type="hidden" name="hiddenPassword" value="${dto.noticePassword}">
<%-- 												<input type="button" class="inputButton" value="수정/삭제" id="btnEdit" onclick="homeMove('${path}/password_chkAction.nt?noticeNum=${dto.noticeNum}&notice_password=${dto.noticePassword}')"> --%>
												<input type="button" class="inputButton" value="수정/삭제" id="btnEdit">
												<input type="button" class="inputButton" value="목록" id="btnList" onclick="homeMove('${path}/noticeList.nt')">
											</td>
										</tr>
									</table>
									
									<br><br>
									
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