<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 반응형 웹 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>지역 목록_ 모달</title>

<!-- css -->
<link rel="stylesheet" href="${path}/resources/css/common/header.css">
<link rel="stylesheet" href="${path}/resources/css/common/footer.css">
<link rel="stylesheet" href="${path}/resources/css/recommendCourse/regionList_modal.css">

<!-- js -->
<script src="https://kit.fontawesome.com/4901c67f37.js" crossorigin="anonymous"></script>
<script src="${path}/resources/js/recommendCourse/regionList_modal.js" defer></script>

</head>
<body>
	<div class="wrap">
		<!-- header 시작 -->
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<!-- header 끝 -->
	
		
		<!-- 컨텐츠 시작 -->
		<div class="container">
		
		<div id="areaList">
		<c:forEach var="dto" items="${list}">
			<div class="area-list">
				<div class="modal">
				    <div class="modal_popup">
				       <!-- 지역 대표 설명 시작 -->
						<div class="content_box">	
							<div class="content">
								<div class="areaContent">
									<h4>${dto.tr_area_english}</h4> 
									<h2>${dto.tr_area_korea}</h2> 
									
									<p>섬 전체가 하나의 거대한 관광자원인 제주도. 에메랄드빛 물빛이 인상적인 협재 해수욕장은 제주 대표 여행지며, 파도가 넘보는 주상절리와 바다 위 산책로인 용머리 해안은 제주에서만 볼 수 있는 천혜의 자연경관으로 손꼽힌다. 드라마 촬영지로 알려진 섭지코지는 꾸준한 사랑을 받고 있으며 한라봉과 흑돼지, 은갈치 등은 제주를 대표하는 음식이다.</p>	
									<p>${dto.tr_area_content}</p>
									<div align="center">
										<input class="recommendCourseDetailButton" type="button" value="추천코스 보기>" onclick="window.location='${path}/recommendCourseList.rc'"> 
									</div>	
								</div>
								<div class="area-detail-image-box">
									<img src="${path}/resources/images/recommendCourse/area/${dto.tr_area_image}.jpg" class="area-detail-image" alt="${dto.tr_area_english}">
								</div>
							</div>
							 	
						</div>
						<button type="button" class="close_btn"><i class="fa-solid fa-xmark"></i></button>
						<!-- 지역 대표 설명 끝 -->
					</div>
				</div>
				</div>	
				<!--end 모달 팝업-->
				<main>
				    <section>
				        <div class="modal-popup-button">
				        <button type="button" class="modal_btn">
				        	<img src="${path}/resources/images/recommendCourse/area/${dto.tr_area_image}.jpg" class="area_img" alt="${dto.tr_area_english}">
				        </button>
				        <div class="area-english">
							 ${dto.tr_area_english} 
						</div>

						<div class="area-korea">
							 ${dto.tr_area_korea}
						</div>
				        </div>
				    </section>
				</main>
 				<!-- 모달 팝업 -->
			   </c:forEach> 
			</div>
		 </div> 	
		<!-- footer 시작 -->
		<%@ include file="/WEB-INF/views/common/footer.jsp"%>
		<!-- footer 끝 -->
	</div>
</body>
</html>