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
				<div id="kakaoMap" width="500px" height="500px">
				
				</div>
				
				
				<!-- <div id="map" style="width:500px;height:400px;"></div>
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
				</script> -->
				<!-- 상위 중앙 2 끝 - 카카오 지도 API 끝-->
				
				<!--  -->
				<div class="rc_map">
						<img src="${path}/resources/images/recommendCourse/course_detail/map/Jeju_course_map1.png" class="course-detail-map" alt="제주 여행코스 지도">
				</div>
				
				
				<!-- 추천 코스 목록 시작 -->
				<div class="rc-detail-course-list">
					
					<div class="course">
						<div id = "areaListImage1">
							<table class="course-table"> 
								<tbody>
									<tr>
										<th scope="col" colspan="2" class="th course-title">1코스:${dto.subname}</th> 
									</tr>
										
									<tr>
										<td>
											<img src="${path}/resources/images/recommendCourse/course_detail/jejuCourse/서우봉둘레길.jpg" alt="여행지" onclick="window.location=해당 여행지 상세페이지로 이동" style="width: 450px;">
										</td>
										<td>
											<strong>코스개요</strong><br><br>
											<div style="text-align: initial"> ${dto.subdetailoverview}
												서우봉둘레길은 제주도 조천읍 함덕해수욕장 동쪽 바다에 접해 있는, 제주올레길 19코스에 포함된 길이다. 봄이면 노란 유채꽃이 에메랄드빛 함덕해변과 어우러져 최고의 산책 코스로 손꼽힌다. 서우봉은 완만한 등성이가 크게 두 봉우리를 이루고 있는 원추형 화산체이며 바라보는 조망이 좋아 새해마다 일출제가 열린다. 서우봉은 역사적으로도 의미가 있는 곳이다. 진도에서 거제로 피신해온 삼별초군이 마지막으로 저항하였던 곳으로 김방경 장군과 삼별초군의 전투가 벌어진 지역이다. 서우봉 정상은 조선시대에 만들어진 봉수대가 있었고 일제강점기에 일본군이 구축한 동굴이 20곳 있다. 정상에 올라 함덕의 아름다운 물빛과 멀리 보이는 한라산을 감상하며 여유를 만끽하기 좋고, 패러글라이딩을 즐기는 인구가 늘고 있다.
											</div>
										</td>								
									</tr>
								</tbody>
							</table>
						</div>							
					</div>
				</div>
				
				</div>
				
				<!-- 추천 코스 목록 끝 -->
		</div>
</body>
</html>