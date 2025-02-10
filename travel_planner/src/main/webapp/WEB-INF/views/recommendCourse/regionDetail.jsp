<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	<!-- lib 추가 -->
<c:set var="path" value="${pageContext.request.contextPath}"/>	    <!-- path는 플젝명 -->
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지역 설명</title>

<!-- 반응형 웹 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- css -->
<link rel="stylesheet" href="${path}/resources/css/common/header.css">
<link rel="stylesheet" href="${path}/resources/css/common/footer.css">
<link rel="stylesheet" href="${path}/resources/css/recommendCourse/regionDetail.css">

<!-- js -->
<script src="https://kit.fontawesome.com/4901c67f37.js" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.7.1.min.js"></script>

<!-- (3-3-2). 자바스크립트 소스 연결 -->
<!-- defer : html을 다 읽은 후에 자바스크립트를 실행한다. 페이지가 모두 로드된 후에 해당 외부 스크립트가 실행된다. -->
<script src="${path}/resources/js/recommendCourse/regionDetail.js" defer></script>
<script src="${path}/resources/js/recommendCourse/regionDetail_modal.js" defer></script>
<script type="text/javaScript">
/* $(function() {
	$('#btn').click(function () {
		$.ajax({
			url: '${path}/resources/js/recommendCourse/regionDetail.js',	// 3. new > file > 파일명, 파일내에 주석달면 오, 특히 마지막 데이터에 콤마있으면 에러
			type: 'GET',
			dataType: 'JSON',
			success: function(area) {
				result = area[0].area + "<br>"
						 area[0].content + "<br>"
						 area[0].
			},
		
		});
	});



}); */

</script>
</head>
<body>
		
	<div class="content_box">	
		<div class="content">
			<div class="areaContent">
				<h4>JEJU</h4>
				<h3>대한민국 제주</h3>
				
				<p>섬 전체가 하나의 거대한 관광자원인 제주도. 에메랄드빛 물빛이 인상적인 협재 해수욕장은 제주 대표 여행지며, 파도가 넘보는 주상절리와 바다 위 산책로인 용머리 해안은 제주에서만 볼 수 있는 천혜의 자연경관으로 손꼽힌다. 드라마 촬영지로 알려진 섭지코지는 꾸준한 사랑을 받고 있으며 한라봉과 흑돼지, 은갈치 등은 제주를 대표하는 음식이다.</p>	
				<div align="center">
					<input class="inputButton" type="button" value="추천코스 보기>" onclick="window.location='${path}/recommendCourseList.rc'"> 
				</div>	
			</div>
			<div class="areaImg">
				<img src="${path}/resources/images/recommendCourse/area/Jeju.jpg" alt="제주" width="250px" height="250px">
			</div>
		</div>
	</div>	
		
</body>
</html>