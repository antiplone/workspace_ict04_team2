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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<!-- js -->
<script src="https://kit.fontawesome.com/4901c67f37.js" crossorigin="anonymous"></script>
<!-- (3-3-2). 자바스크립트 소스 연결 -->
<!-- defer : html을 다 읽은 후에 자바스크립트를 실행한다. 페이지가 모두 로드된 후에 해당 외부 스크립트가 실행된다. -->
<script src="${path}/resources/js/recommendCourse/regionDetail.js" defer></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</head>
<body>

	<div class="wrap">
		<!-- header 시작 -->
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<!-- header 끝 -->
		
		<!-- 컨텐츠 시작 -->
		<div id="container">
				<div id="contents-head">
					<!-- 상단 중앙1 시작 -->
					<div id="title">
						<br><br>
						<h3 align="center" style="">여행코스 짜기 어렵다면 여기닷!</h3>
						<br><br>
					</div>
						
					<!-- 상단 중앙1 끝 -->	
				</div>
					
					<p class="page_title"> 추천코스 <p>
					
					<div class="contents-body">
						<ul class="recommend-course-list">
							<li>
							
							
								<div class="rc_wrap">
									<div class="rc_image">
												<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
												  <div class="carousel-indicators">
												    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
												    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
												    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
												  </div>
												  <div class="carousel-inner">
												    <div class="carousel-item active">
												      <img src="${path}/resources/images/recommendCourse/course/Jeju_course_1-1.jpg" width="400px" height="400px" class="d-block w-100" alt="...">
												    </div>
												    <div class="carousel-item">
												      <img src="${path}/resources/images/recommendCourse/course/Jeju_course_1-2.jpg" width="400px" height="400px" class="d-block w-100" alt="...">
												    </div>
												    <div class="carousel-item">
												      <img src="${path}/resources/images/recommendCourse/course/Jeju_course_1-3.jpg" width="400px" height="400px" class="d-block w-100" alt="...">
												    </div>
												  </div>
												  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
												    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
												    <span class="visually-hidden">Previous</span>
												  </button>
												  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
												    <span class="carousel-control-next-icon" aria-hidden="true"></span>
												    <span class="visually-hidden">Next</span>
												  </button>
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
							</li>
						</ul>
					</div>
				</div>		
					<!-- 추천코스가 있으면 -->
					<c:forEach var="dto" items="${list}">
						<tr>
							<td>${dto.recommendCourse}</td>
							<td></td>
						</tr>
						
					</c:forEach>
				
			</div>
</body>
</html>