<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>다음 지도API</title>
	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6d0003a29a1289cf7b4133acf9e56056&autoload=false"></script>
</head>
<body>
	<div id="map" style="width:1000px;height:350px;"></div>

	<script type="text/javascript">
		kakao.maps.load(function() {
			let mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = {
			        center: new kakao.maps.LatLng(37.56682, 126.97864), // 지도의 중심좌표
			        level: 8 // 지도의 확대 레벨
			    }; 
	
			// 지도를 생성한다 
			kakao.maps.disableHD();
			let map = new kakao.maps.Map(mapContainer, mapOption); 

			let positions = [
				new kakao.maps.LatLng(37.56682, 126.97864),
				new kakao.maps.LatLng(37.56382, 126.97664),
				new kakao.maps.LatLng(37.56382, 126.97464),
				new kakao.maps.LatLng(37.56182, 126.97264)
			];
			let marker = [];
			// 지도에 마커를 생성하고 표시한다
			for (let i = 0; i < positions.length; i++) {
				marker[i] = new kakao.maps.Marker({
				    position: positions[i], // 마커의 좌표
				    map: map // 마커를 표시할 지도 객체
				});
			}
		});

	</script>
</body>
</html>