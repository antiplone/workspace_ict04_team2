<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/common/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<!-- css -->
<link rel="stylesheet" href="${path}/resources/css/common/header.css">
<link rel="stylesheet" href="${path}/resources/css/common/footer.css">
<link rel="stylesheet"
	href="${path}/resources/css/admin/ad_boardList.css">

<!-- js -->
<script src="https://kit.fontawesome.com/3f6025c3d2.js"
	crossorigin="anonymous"></script>
<!-- (3-3-2). 햄버거버튼 - 자바스크립트 소스 연결 -->
<!-- defer : html을 다 읽은 후에 자바스크립트를 실행한다. 페이지가 모두 로드된 후에 해당 외부 스크립트가 실행된다. -->
<script src="${path}/resources/js/common/main.js" defer /></script>

<script>
		document.addEventListener("DOMContentLoaded", () => {
			comment_list()
	
		   	const btnEdit = document.querySelector("#btnEdit");
		   	const btnList = document.querySelector("#btnList");
		   	const btnCommentSave = document.querySelector("#btnCommentSave");
		   	
		   	// [게시글 목록 버튼] 클릭 시 컨트롤러의 목록으로 이동
	   		btnList.addEventListener('click', function(e){
	   			
				location.href="${path}/board_list.brl";
		    });
		   	
		   	// [게시글 수정삭제 버튼] 클릭 시 [게시글 수정삭제 화면]으로 이동(컨트롤러에서 패스워드 체크 후) 
	   		btnEdit.addEventListener('click', function(e){
				document.detailForm.action="${path}/password_chkAction.brl";
	   			document.detailForm.submit();	
		    });
		   	
	   		btnCommentSave.addEventListener('click', function(e){
	   			comment_add();
	   		});
	   		
	    });
		   	// [댓글쓰기 버튼 클릭]
		   	
		   
   	 	function comment_add(){
	   		 alert('comment_add()');
	   		
	   		// 게시글 번호, 댓글 작성자, 댓글 내용을 파라미터로 넘김
	   		let param = {
   				"board_num" : ${dto.b_num}, // key : value = > 댓글번호 : 게시글 번호
   				"writer" : $('#cb_writer').val(),
   				"content" : $('#cb_content').val(),
	   		};

	   	
		   	$.ajax({
		   		url:'${path}/comment_insert.brl',
		   		type : 'POST',
				data : param,
		   		success:function(){ 
		   			$('#cb_writer').val("");
		   			$('#cb_content').val("");
		   			comment_list();
		   		},
		   		error:function(){
		   			alert("comment_add() 오류")		   		
	   			},
		   	});
	   	}
	   	
	   	// 댓글 목록
	   	function comment_list(){ // (8)
	   		// alert("comment_list()");
	   		$.ajax({
	   			url:'${path}/comment_list.brl', // 컨트롤러로 이동(9)
	   			type: 'POST',
	   			data : 'board_num=${dto.b_num}',
	   			success : function(result){ // 콜백함수(13) => result는 comment_list
	   				
					$('#commentList').html(result);
	   			},
	   			error:function(j,t, errorThrown){
	   				alert(errorThrown);
	   			},
	   		});
	   	}
	   	
	   	

	   	

</script>
</head>
<body>

	<div class="wrap">
		<!-- header 시작 -->
		<div class="header_wrap">
			<%@ include file="/WEB-INF/views/common/header.jsp"%>
		</div>
		<!-- header 끝 -->

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

					<!-- 좌측 메뉴 시작 -->
					<%@ include file="/WEB-INF/views/admin/common/leftMenu.jsp"%>
					<!-- 좌측 메뉴 끝 -->

					<!-- 우측 화면 시작 -->
					<div id="right">
						<div class="table_div">
							<form name="detailForm" method="post">

								<table>
									<tr>
										<th style="width: 200px">글번호</th>
										<td style="width: 200px">${dto.b_num}</td>
										<th style="width: 200px">조회수</th>
										<td style="width: 200px">${dto.b_readCnt}</td>
									</tr>
									<tr>
										<th style="width: 200px">작성자</th>
										<td style="width: 200px">${dto.b_writer}</td>
										<th style="width: 200px">비밀번호</th>
										<td style="width: 200px"><input style="width: 180px;"
											type="password" class="input" name="b_password"
											id="b_password" size="30" placeholder="비밀번호 입력" required
											autofocus /> <c:if test="${param.message == 'error'}">
												<b><span style="color: red">비밀번호 불일치!!</span></b>
											</c:if></td>
									</tr>
									<tr>
										<th style="width: 200px">글제목</th>
										<td colspan="3">${dto.b_title}</td>
									</tr>
									<tr>
										<th style="width: 200px">글내용</th>
										<td colspan="3">${dto.b_content}</td>
									</tr>

									<tr>
										<th style="width: 200px">작성일</th>
										<td colspan="3">${dto.b_regDate}</td>
									</tr>

									<tr>
										<td colspan="4" align="center"><input type="hidden"
											name="hiddenB_num" value="${dto.b_num}"> <input
											type="button" class="inputButton" value="수정/삭제" id="btnEdit">
											<input type="button" class="inputButton" value="목록"
											id="btnList"></td>
									</tr>
								</table>

								<br>
								<br>

								<div id="commentList" align="center"></div>
								<!--  댓글 입력 코드 -->
								<table>
									<tr>
										<th style="width: 300px">댓글 작성자</th>
										<td style="width: 200px; text-align: left"><input
											style="width: 200px" type="text" class="input"
											name="c_writer" id="cb_writer" size="30" placeholder="작성자 입력" />
										</td>
										<td style="width: 40px" rowspan="2" align="right"><input
											type="button" class="inputButton" value="작성"
											id="btnCommentSave"></td>
									</tr>
									<tr>
										<th style="width: 300px">글내용</th>
										<td style="width: 170px; text-aclign: center"><textarea
												rows="5" cols="93" name="c_content" id="cb_content"
												placeholder="댓글입력"></textarea></td>
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
			<%@ include file="/WEB-INF/views/common/footer.jsp"%>
		</div>
		<!-- footer 끝 -->

	</div>

</body>
</html>