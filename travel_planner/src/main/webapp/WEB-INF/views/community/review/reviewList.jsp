<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰</title>

<link rel="stylesheet" href="${path}/resources/css/review/review.css">

</head>
<body>
	<div>
		<!-- 컨텐츠 시작 -->
		<div class="reviewList">
			<img src="${path}/resources/images/후기.jpg" width="900">
		
			<input class="review" type="button" onclick="window.location='${path}/reviewWrite.do'">
	
			<input class="reviewDetail" type="button" onclick="window.location='${path}/reviewDetail.do'">
		</div>
		
		
		<!-- 컨텐츠 끝 -->
	</div>
	
	
</body>
</html>