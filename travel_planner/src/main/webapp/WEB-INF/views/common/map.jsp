<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${path}/resources/css/common/reset.css" />
<link rel="stylesheet" href="${path}/resources/css/common/common.css">
<style type="text/css">
	.directions { margin: 60px 0; }
	.map_text { margin-top: 20px; }
</style>
</head>
<body>
	<div class="directions pretendardfont">
		<div class="kakaoMap fontbold size35" align="center">오시는길</div>
		<div class="kakaomap" style="width:960px;height:500px;margin: 0 auto;padding:40px 0;">
			<div id="map" style="width:100%;height:100%;"></div>
			<p class="map_text size16">서울특별시 마포구 백범로 23, 3층 (신수동, 케이터틀)</p>
		</div>
	</div>
	<script>
	
	const mapScript = document.createElement("script");
		mapScript.async = true;
		mapScript.src = `//dapi.kakao.com/v2/maps/sdk.js?appkey=c1740f493a8a5f220d431fdb519af8b5&autoload=false`;
		
		document.head.appendChild(mapScript);
		
		const onLoadKakaoMap = () => {
			window.kakao.maps.load(() => {
				const mapContainer = document.getElementById("map");
				const mapOption = {
					center: new kakao.maps.LatLng(37.552598, 126.937810), // 지도의 중심좌표
					level: 3 // 지도의 확대 레벨
				};
				const map = new window.kakao.maps.Map(mapContainer, mapOption);	// 지도를 생성합니다
				map.setDraggable(false); // 마우스로 지도 이동 가능x
				map.setZoomable(false);  // 마우스 휠로 지도 확대/축소 가능x
				
				var markerPosition  = new kakao.maps.LatLng(37.552598, 126.937810); // 마커가 표시될 위치입니다
				var marker = new kakao.maps.Marker({
					// 마커를 생성합니다
				    position: markerPosition
				});
				
				marker.setMap(map);	// 마커가 지도 위에 표시되도록 설정합니다
				
				
				var iwContent = '<div style="padding:5px;" class="pretendardfont size15">한국ICT인재개발원</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
			    iwPosition = new kakao.maps.LatLng(37.552598, 126.937810); //인포윈도우 표시 위치입니다
	
				// 인포윈도우를 생성합니다
				var infowindow = new kakao.maps.InfoWindow({
				    position : iwPosition, 
				    content : iwContent 
				});
			  
				// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
				infowindow.open(map, marker); 
			});
		};
		
		mapScript.addEventListener("load", onLoadKakaoMap);
	</script>     
</body>
</html>