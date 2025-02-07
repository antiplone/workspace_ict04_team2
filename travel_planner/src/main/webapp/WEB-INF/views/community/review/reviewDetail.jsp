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
				
				<div class="reviewDetail_title">
				제목
				</div>
				
				<!-- 작성자/작성일/조회수/찜 시작 -->
				<div class="reviewDetail_info">
					<div class="reviewDetail_writer">작성자/작성일</div>
					<div class="reviewDetail_views">조회수/찜</div>
				</div>
				<!-- 작성자/작성일/조회수 시작 끝 -->
				<!-- 도시/제목/작성자 끝 -->
			</div>
			
			<div class="reviewDetail_middel">
			
			</div>
		</div>
		<!-- 리뷰 끝 -->
		
		
		
		<!-- 컨텐츠 끝 -->
		
	</div>

</body>
</html>