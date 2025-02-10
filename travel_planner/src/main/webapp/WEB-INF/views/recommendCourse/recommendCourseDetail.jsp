<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	<!-- lib 추가 -->
<c:set var="path" value="${pageContext.request.contextPath}"/>	    <!-- path는 플젝명 -->
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추천 코스 상세페이지</title>

<!-- 반응형 웹 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- css -->
<link rel="stylesheet" href="${path}/resources/css/recommendCourse/recommendCourseDetail.css">

<!-- js -->
<script src="https://kit.fontawesome.com/4901c67f37.js" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3c94b2e227b31c5df6f772c0398939d8"></script>
<script>
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};

var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
</script>

</head>
<body>
	
	<div class="wrap">
		
		<div class="re_detail-container">
			<!-- 컨텐츠 시작 -->
				<!-- 상위 중앙 1 시작 -->
				<div class="rc-detail-head">
					<div id="rc-detail-title">
						<h1> 제주의 자연을 느끼다 </h1>
					</div>	
					<div id="rc-detail-day">
						<h3> 당일여행 </h3>
					</div>
					<hr>
						<div class="rc-detail-tag">	
							<br>
							<p>#25_26한국관광100선 #둘레길 #레포츠 #액티브시니어 #제주권 #추천코스 #한국관광100선 #한국의둘레길 </p>
							<br>
						</div>
					<hr>
				</div>										
				<!-- 상위 중앙 1 끝 -->
				
				<!-- 상위 중앙 2 시작 - 카카오 지도 API 시작 -->
				<div class="rc_detail-center">
					<!-- <div id="map" style="width:500px;height:400px;"></div> -->
						<img src="${path}/resources/images/recommendCourse/course_detail/map/Jeju_course_map1.png" class="course-detail-map" alt="제주 여행코스 지도">
				</div>	
				<!-- 상위 중앙 2 끝 - 카카오 지도 API 끝-->
				
				<!-- 추천 코스 목록 시작 -->
				<div class="rc-detail-course-list">
				
				
				</div>
				
				<!-- 추천 코스 목록 끝 -->
		</div>
	</div>
</body>
</html>