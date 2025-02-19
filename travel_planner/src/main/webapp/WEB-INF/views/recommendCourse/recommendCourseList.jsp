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
<script src="${path}/resources/js/recommendCourse/recommendCourseList.js" defer></script>

</head>
<body>
 	<div class="wrap">
		
		<!-- 컨텐츠 시작 -->
		<div id="container">
				<!-- 상단 중앙1 시작 -->
				<div id="contents-head">
					<div id="title">
						<br><br>
						<h3 align="center" class="title">여행코스 짜기 어렵다면 여기닷!</h3>
						<br><br>
					</div>
					
					<div id="page-title">
						<h2> 추천코스 </h2>	
					</div>
				</div>
				<!-- 상단 중앙1 끝 -->	
					
				<!-- 상단 중앙2 시작 -->
				<div id="courseList">
					<!-- 1번 추천코스 시작 -->
					<c:forEach var="dto" items="${list}">
						<div class="course_list">
							<div class="modal_popup_button">
								<button type="button" class="modal_btn"
											course_id="${dto.tr_course_id}"
					                        course_title="${dto.tr_course_title}"
					                        course_taketime="${dto.tr_course_taketime}"
					                        course_tag="${dto.tr_course_tag}"
					                        course_map="${dto.tr_course_map}"
					                        course_subId="${dto.tr_Course_subId}"
					                        course_locationImage="${dto.tr_course_locationImage}"
					                        course_location="${dto.tr_course_location}"
					                        course_locationContent="${dto.tr_course_locationContent}"
					                        course_image="${path}${dto.tr_course_image}">
					                        <div class="image-box">
					                   		<img src="${path}${dto.tr_course_image}"
					                         class="course_img" 
					                         alt="${dto.tr_course_title}">
					                        </div>  
					                         <%-- <div class="image-box">
												<img src="${path}/resources/images/recommendCourse/course/Jeju_course_1-1.jpg" class="course_img" alt="추천코스_제주">
											 </div>	 --%>
					               
											<div class="course_content">
												<div class="course_title">${dto.tr_course_title}</div>
												<div class="course_taketime">${dto.tr_course_taketime}</div>
												<div class="course_tag">${dto.tr_course_tag}
													<!-- #25_26한국관광100선 #둘레길 #레포츠 #액티브시니어 <br> 
													#제주권 #추천코스 #한국관광100선 #한국의둘레길 <br> -->
												</div>
											</div>
								 </button>
							</div>
						</div>
					</c:forEach>	
					<!-- 1번 추천코스 끝 -->
					
					<!-- 모달 팝업 -->
					<div class="modal" id="courseModal">
					    <div class="modal_popup">
					        <div class="content_box">
					            <div class="content">
					                <div class="courseContent">
					                    <div id="modalCourseTitle"></div>
					                    <div id="modalCourseTaketime"></div>
					                    <hr>
					                    <div id="modalCourseTag"></div>
					                    <hr>
					                    <div class="course_map_box"><img id="modalCourseMap" class="modal_map_image" src=""  alt=""></div>
					                    <div class="course_detail_image_box"><img id="modalCourseImage" class="modal_detail_image" src=""  alt=""></div>
					                </div>
					            </div>
					        </div>
					        <button type="button" class="close_btn"><i class="fa-solid fa-xmark"></i></button>
						<%-- 	<!-- 추천 코스 목록 시작 -->
							<div class="rc-detail-head">
								<div id="rc-detail-title">
									<h1> 제주의 자연을 느끼다 </h1>
								</div>	
								<div id="rc-detail-day">
									<h3> 당일여행 </h3>
								</div>
								<hr>
									<div class="modalCourseTag">	
										<br>
										<p>#25_26한국관광100선 #둘레길 #레포츠 #액티브시니어 #제주권 #추천코스 #한국관광100선 #한국의둘레길 </p> 
										<br>
									</div>
								<hr>
							</div>		
															
							<div class="rc_map">
								<img src="${path}/resources/images/recommendCourse/course_detail/map/Jeju_course_map1.png" class="course-detail-map" alt="제주 여행코스 지도">
							</div>
							
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
														<img src="${path}/resources/images/recommendCourse/course_detail/jejuCourse/서우봉둘레길.jpg" alt="여행지" onclick="window.location=해당 여행지 상세페이지로 이동" style="width: 400px; height:320;">
													</td>
													<td>
														<strong>코스개요</strong><br><br>
														<div style="text-align: initial" class="subContent"> ${dto.subdetailoverview}
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
							
							<!-- 추천 코스 목록 끝 --> --%>
					    </div>
					</div>
					<!-- 모달 팝업 끝 -->
					
			</div>
		</div>
		</div>
</body>
</html>