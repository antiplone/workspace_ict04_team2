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

<title>추천코스 목록</title>

<!-- css -->
<link rel="stylesheet" href="${path}/resources/css/common/header.css">
<link rel="stylesheet" href="${path}/resources/css/common/footer.css">
<link rel="stylesheet" href="${path}/resources/css/recommendCourse/recommendCourseList.css">

<!-- js -->
<script src="https://kit.fontawesome.com/4901c67f37.js" crossorigin="anonymous"></script>
<!-- (3-3-2). 자바스크립트 소스 연결 -->
<!-- defer : html을 다 읽은 후에 자바스크립트를 실행한다. 페이지가 모두 로드된 후에 해당 외부 스크립트가 실행된다. -->
<script src="${path}/resources/js/recommendCourse/regionDetail.js" defer></script>
<script src="${path}/resources/js/recommendCourse/recommendCourseList.js" defer></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<script>
function recommendcourse_detail() {
 	window.location="${path}/recommendCourseDetail.rc"
}
</script>

</head>
<body>

	<div class="wrap">
		<!-- header 시작 -->
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<!-- header 끝 -->
		
		<!-- 컨텐츠 시작 -->
		<div id="container">
				<div id="contents-head">
					<div id="title">
						<br><br>
						<h3 align="center">여행코스 짜기 어렵다면 여기닷!</h3>
						<br><br>
					</div>
					
					<div id="page-title">
						<h2> 추천코스 </h2>	
					</div>
					<!-- 상단 중앙1 끝 -->	
				</div>
					
				<!-- 컨텐츠 시작 -->
				<div class="container">
					<div class="rc-course-list">
						<%-- <!--end 모달 팝업-->
						<main>
						    <section>
						        <div class="modal-popup-button">
						        <button type="button" class="modal_btn">
						        	<img src="${path}/resources/images/recommendCourse/area/Jeju.jpg" class="area_img" alt="제주" onclick="showJeju()">
						        	<img src="${path}/resources/images/recommendCourse/course/Jeju_course_1-1.jpg" class="rc_image" alt="추천코스_제주">
						        </button>
						        </div>
						    </section>
						</main>
						<!--모달 팝업-->
						<div class="modal">
						    <div class="modal_popup">
						       <!-- 지역 대표 설명 시작 -->
								<div class="content_box">	
									<div class="content">
										<div class="areaContent">
											<h4>JEJU</h4>
											<h2>대한민국 제주</h2>
											
											<p>섬 전체가 하나의 거대한 관광자원인 제주도. 에메랄드빛 물빛이 인상적인 협재 해수욕장은 제주 대표 여행지며, 파도가 넘보는 주상절리와 바다 위 산책로인 용머리 해안은 제주에서만 볼 수 있는 천혜의 자연경관으로 손꼽힌다. 드라마 촬영지로 알려진 섭지코지는 꾸준한 사랑을 받고 있으며 한라봉과 흑돼지, 은갈치 등은 제주를 대표하는 음식이다.</p>	
											<div align="center">
												<input class="recommendCourseDetailButton" type="button" value="추천코스 보기>" onclick="window.location='${path}/recommendCourseList.rc'"> 
											</div>	
										</div>
										<div class="area-detail-image-box">
											<img src="${path}/resources/images/recommendCourse/area/Jeju.jpg" class="area-detail-image" alt="제주">
										</div>
									</div>
									 	
								</div>
								<button type="button" class="close_btn"><i class="fa-solid fa-xmark"></i></button>
								<!-- 지역 대표 설명 끝 -->
							</div>
						</div>	
					</div>	 --%>
					
					
					<!-- 상단 중앙2 시작 -->
					<div class="contents-row-1">
						<!-- 1번 추천코스 시작 -->
						<div class="contents-left">
							<div class="recommend-course-list-left" onclick="recommendcourse_detail()">
								<div class="rc_wrap">
									<div class="image-box">
										<img src="${path}/resources/images/recommendCourse/course/Jeju_course_1-1.jpg" class="rc_image" alt="추천코스_제주" width="400px" height="250px">
									</div>		
									<div class="rc_contnents">
										<div id="rc_title">
											<a>제주의 자연을 느끼다</a>
										</div>
										<div id="rc_day">
											당일여행
										</div>
										<div id="rc_tag">
											#25_26한국관광100선 #둘레길 #레포츠 #액티브시니어 <br> 
											#제주권 #추천코스 #한국관광100선 #한국의둘레길 <br>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 1번 추천코스 끝 -->
						
						<!-- 2번 추천코스 시작 -->
						<div class="contents-right">
							<div class="recommend-course-list-right" onclick="recommendcourse_detail()">
								<div class="rc_wrap">
									<div class="image-box">
										<img src="${path}/resources/images/recommendCourse/course/Jeju_course_2-1.jpg" class="rc_image" alt="추천코스_제주" width="400px" height="250px">
									</div>		
									<div class="rc_contnents">
										<div id="rc_title">
											<a>제주의 특별한 카페에서의 여유</a>
										</div>
										<div id="rc_day">
											당일여행
										</div>
										<div id="rc_tag">
											#1박2일 #당일코스 #추천코스 #맛집코스 <br> 
										</div>
									</div>
								</div>
							</div>
						</div>
						
					<!-- 2번 추천코스 끝 -->
					
					<!-- 추천코스가 있으면 -->
					<c:forEach var="dto" items="${list}">
						<tr>
							<td>${dto.recommendCourse}</td>
							<td></td>
						</tr>
						
					</c:forEach>
			</div>
		</div>
	</div>		
</body>
</html>