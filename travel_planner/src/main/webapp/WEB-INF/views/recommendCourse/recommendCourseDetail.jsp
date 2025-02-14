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
				<%-- <div class="rc_detail-center">
						<img src="${path}/resources/images/recommendCourse/course_detail/map/Jeju_course_map1.png" class="course-detail-map" alt="제주 여행코스 지도">
				</div>	 --%>
				
				<div id="map" style="width:500px;height:400px;"></div>
				<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=63c5b74c5b5a0c1756db03438ea3e5b2"></script>
				<script>
					var container = document.getElementById('map');
					var options = {
						center: new kakao.maps.LatLng(33.450701, 126.570667), /* 괄호안 지도에 띄울 좌표 */
						level: 3
					};
			
					var map = new kakao.maps.Map(container, options);
					
					// 마커를 표시할 위치와 title 객체 배열입니다 
					var positions = [
					    {
					        title: '카카오', 
					        latlng: new kakao.maps.LatLng(33.450705, 126.570677)
					    },
					    {
					        title: '생태연못', 
					        latlng: new kakao.maps.LatLng(33.450936, 126.569477)
					    },
					    {
					        title: '텃밭', 
					        latlng: new kakao.maps.LatLng(33.450879, 126.569940)
					    },
					    {
					        title: '근린공원',
					        latlng: new kakao.maps.LatLng(33.451393, 126.570738)
					    }
					];

					// 마커 이미지의 이미지 주소입니다
					var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
					    
					for (var i = 0; i < positions.length; i ++) {
					    
					    // 마커 이미지의 이미지 크기 입니다
					    var imageSize = new kakao.maps.Size(24, 35); 
					    
					    // 마커 이미지를 생성합니다    
					    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
					    
					    // 마커를 생성합니다
					    var marker = new kakao.maps.Marker({
					        map: map, // 마커를 표시할 지도
					        position: positions[i].latlng, // 마커를 표시할 위치
					        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
					        image : markerImage // 마커 이미지 
					    });
					}
				</script>
				<!-- 상위 중앙 2 끝 - 카카오 지도 API 끝-->
				
				<!-- 추천 코스 목록 시작 -->
				<div class="rc-detail-course-list">
					<div class="course_wrap">
						<!-- moblie -->
						<div class="mo js_slider">
							::after
						</div>
						<!-- tab cont -->
						<div id="tabCont">
						
						<!-- //tab cont -->
							
						</div>
					</div>
				</div>
				
				<!-- 추천 코스 목록 끝 -->
		</div>
	</div>
</body>
</html>