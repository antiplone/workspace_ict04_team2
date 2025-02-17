<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰작성</title>

<!-- css -->
<link rel="stylesheet" href="${path}/resources/css/common/header.css">
<link rel="stylesheet" href="${path}/resources/css/common/footer.css">
<link rel="stylesheet" href="${path}/resources/css/review/reviewWrite.css">


<script type="text/javascript">
	$(function(){
		$("#cancel").click(function(){
			if(confirm("취소 시 작성 내용이 저장되지 않습니다.\n작성을 취소하시겠습니까?") == true){
				   window.location = "${path}/reviewList.do";
				} else {
					window.location = "${path}/reviewWrite.do";
				}
		})
		
		$("#save").click(function(){
			window.location = "${path}/reviewList.do";
		})
	})

</script>

</head>
<body>
	<div>
		<!-- header 시작 -->
		<%@ include file="/WEB-INF/views/common/header.jsp" %>
		<!-- header 끝 -->
		
			<!-- 후기작성 상단 시작 -->
			<div id="writeTop">
				<div id="writeTitle_top">	<!-- 리뷰 게시판 제목 -->
						<h1 align="center">여행후기 작성</h1>
				</div>
			</div>
			<!-- 후기작성 상단 종료 -->
			
			<div id="reviewWrite">
				<div id="reviewWrite1">
					<!-- 후기 내용 시작 -->
					<div class="reviewWrite_form">
						<!-- 도시 선택 시작 -->
						<div class="reviewWrite_city">
							<div class="reviewWrite_city1">도시</div>
							<input type="text" class="reviewWrite_in" placeholder="여행도시를 입력해주세요">
						</div>
						<!-- 도시 선택 종료 -->
						
						<!-- 제목 시작  -->
						<div class="reviewWrite_title">
							<div class="reviewWrite_title1">제목</div>
							<input type="text" class="reviewWrite_in" placeholder="제목을 입력해주세요">
						</div>
						<!-- 제목 종료 -->
						
						<!-- 내용 시작 -->
						<div class="reviewWrite_content">
							<div class="reviewWrite_content1">
							
								<div class="reviewWrite_content2">
									<div class="reviewWrite_content3">내용</div>
									
									<!-- 파일 선택 버튼 시작 -->
									<label for="file">
									  <span class="btn-upload">파일 업로드하기</span>
									</label>
									<input type="file" name="file" id="file">
								</div>
								
								<!-- 내용 입력 시작 -->
								<div class="reviewWrite_content4">
									<textarea placeholder="내용을 입력해주세요"></textarea>
								</div>
								
								<!-- 내용 입력 종료 -->
									
							</div>
							
						</div>
						<!-- 내용 종료 -->
						
						</div>
						
						<!-- 태그 시작 -->
						<div class="reviewWrite_tag">Tag
							<div class="tag">
								<span class="tag1">#</span>
								<input type="text" class="reviewWrite_in" placeholder="태그를 입력해주세요">
							</div>
						</div>
						<!-- 태그 종료 -->
						
					<!-- 후기 내용 종료 -->
					
					<!-- 버튼 시작 -->
					<div class="reviewWrite_btn">
						<div class="reviewWrite_btn1">
							<input type="button" value="취소" class="inputButton" id="cancel">
							<input type="button" value="저장" class="inputButton" id="save">
						</div>
					</div>
					<!-- 버튼 종료 -->
				</div>
			</div>
			
		<!-- footer 시작 -->
		<%@ include file="/WEB-INF/views/common/footer.jsp" %>
		<!-- footer 끝 -->	
	</div>

</body>
</html>