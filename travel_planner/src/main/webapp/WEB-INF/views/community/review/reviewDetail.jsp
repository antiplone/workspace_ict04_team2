<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰</title>

<!-- css -->
<link rel="stylesheet" href="${path}/resources/css/common/header.css">
<link rel="stylesheet" href="${path}/resources/css/common/footer.css">
<link rel="stylesheet" href="${path}/resources/css/review/reviewDetail.css">

</head>
<body>
	<div>
		<!-- header 시작 -->
		<%@ include file="/WEB-INF/views/common/header.jsp" %>
		<!-- header 끝 -->
		
		<!-- 컨텐츠 시작 -->
		<div id="reviewDetail_t">
			<h1 align="center">여행 후기</h1>
			<!-- 상단 끝 -->
		</div>
		
		<!-- 리뷰 시작 -->	
		<div id="reviewDetail">
			<div class="reviewDetail_top">
			
				<!-- 도시/제목/작성자 시작 -->
				
				<div class="reviewDetail_city">
				도시
				</div>
				
				<div class="reviewDetail_title">${dto.r_title}</div>
				
				<!-- 작성자/작성일/조회수 시작 -->
				<div class="reviewDetail_info">
					<div class="reviewDetail_writer">${dto.m_name}/${dto.r_regDate}</div>
					<div class="reviewDetail_views">조회수 ${dto.r_readCnt}</div>
				</div>
				<!-- 작성자/작성일/조회수 시작 끝 -->
				<!-- 도시/제목/작성자 끝 -->
				
			</div>
			
			
			<div class="reviewDetail_middle">
				<!-- 후기 시작 -->
				<div class="reviewDetail_contents">${dto.r_content}</div>
				<!-- 후기 끝 -->
			
				<!-- 태그 시작 -->
				<div class="reviewDetail_tag">태그</div>
				<!-- 태그 끝 -->
				
			</div>
			
			<!-- 후기 하단 시작 -->
			<div class="reviewDetail_bottom">
				<input type="button" value="목록" class="reviewDetail_listBtn" onclick="window.location='${path}/reviewList.do'">
				<input type="button" value="수정" class="reviewDetail_corBtn">
				<input type="button" value="삭제" class="reviewDetail_corBtn">
			</div>
			<!-- 후기 하단 끝 -->
			
		</div>
		<!-- 리뷰 끝 -->
		
		
		
		<!-- 컨텐츠 끝 -->
		
	</div>

</body>
</html>