<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 반응형 웹 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>
<!-- css -->
<link rel="stylesheet" href="${path}/resources/css/common/header.css">
<link rel="stylesheet" href="${path}/resources/css/common/common.css">
<link rel="stylesheet" href="${path}/resources/css/common/main.css">
<link rel="stylesheet" href="${path}/resources/css/common/footer.css">
<link rel="stylesheet" href="${path}/resources/css/common/slide.css">

<!-- js -->
<script src="https://kit.fontawesome.com/3f6025c3d2.js" crossorigin="anonymous"></script>
<script src="${path}/resources/js/common/main.js" defer></script>
<script src="${path}/resources/js/common/slider.js" defer></script>
<script src="${path}/resources/js/common/slider2.js" defer></script>
<script type="text/javascript">

</script>

</head>
<body>
	<div class="wrap">
		<!-- header 시작 -->
		<div class="header_wrap">
			<c:choose>
				<c:when test="${sessionScope.sessionID eq null}">
					<%@ include file="/WEB-INF/views/common/header.jsp"%>
				</c:when>
				<c:otherwise>
					<%@ include file="/WEB-INF/views/common/header.jsp"%>
				</c:otherwise>
			</c:choose>
		</div>
		<!-- header 끝내기 -->
		<div id="slide_box_wrap" data-color="gray">
			<div class="slide_box">
				<div class="slide_list">
					<div class="carousel_wrapper">
						<div id="lastClone" class="slide_item" data-color="yellow" data-num="3">
							<div class="left_comment">
								<div>
									<strong style="color: #3d3d3d">포항의 멋과 맛을 담아,<br>스페이스
										미조
									</strong> <br> <a href="#">자세히 보기</a>
								</div>
							</div>
							<div class="right_img">
								<img src="${path}/resources/images/landscape/background.png">
							</div>
						</div>
						<div class="slide_item" data-color="gray" data-num="1">
							<div class="left_comment">
								<div>
									<strong style="color: #3d3d3d">여수로 떠나는<br>특별한 맛
										여행🌞
									</strong> <br> <a href="#">자세히 보기</a>
								</div>
							</div>
							<div class="right_img">
								<img
									src="${path}/resources/images/landscape/background_yeosu.png">
							</div>
						</div>
						<div class="slide_item" data-color="skyblue" data-num="2">
							<div class="left_comment">
								<div>
									<strong style="color: #3d3d3d">남해로 떠나는<br>특별한 기차
										여행
									</strong> <br> <a href="#">자세히 보기</a>
								</div>
							</div>
							<div class="right_img">
								<img src="${path}/resources/images/landscape/background.png">
							</div>
						</div>
						<div class="slide_item" data-color="yellow" data-num="3">
							<div class="left_comment">
								<div>
									<strong style="color: #3d3d3d">포항의 멋과 맛을 담아,<br>스페이스
										미조
									</strong> <br> <a href="#">자세히 보기</a>
								</div>
							</div>
							<div class="right_img">
								<img
									src="${path}/resources/images/landscape/background_pohang.png">
							</div>
						</div>
						<div id="firstClone" class="slide_item" data-color="gray" data-num="1">
							<div class="left_comment">
								<div>
									<strong style="color: #3d3d3d">여수로 떠나는<br>특별한 맛
										여행🌞
									</strong> <br> <a href="#">자세히 보기</a>
								</div>
							</div>
							<div class="right_img">
								<img
									src="${path}/resources/images/landscape/background_yeosu.png">
							</div>
						</div>
					</div>
				</div>
				
				<div class="carousel_notice_box">
					<div class="progress_bar_wrap">
						<div class="progress-bar">
							<span class="progress_bar_fill"><span class="fill"></span></span>
						</div>
						<div class="paging_num">
							<span id="page_current" class="page_current" data-num="">01</span>
							/ <span class="page_total">03</span>
						</div>
					</div>
				</div>
				<button class="prevBtn arr"></button>
				<button class="nextBtn"></button>
			</div>
		</div>
		
		<div class="recomment_tour_list_wrap">
			<h3> 함께 떠나는 지역 여행 </h3>
			<div id="recomment_tour_list" align="center">
				<div class="recommend_carousel_wrapper">
					<div id="firstClone" class="recommend_slide_item" data-color="gray">
						<div>
							<div class="right_img">
								<img
									src="${path}/resources/images/landscape/background_yeosu.png">
							</div>
							<div class="left_comment">
								<div>
									<strong style="color: #3d3d3d">여수로 떠나는<br>특별한 맛
										여행🌞
									</strong>
								</div>
							</div>
						</div>
						<div>
							<div class="right_img">
								<img src="${path}/resources/images/landscape/background_pohang.png">
							</div>
							<div class="left_comment">
								<div>
									<strong style="color: #3d3d3d">포항의 멋과 맛을 담아,<br>스페이스
										미조
									</strong>
								</div>
							</div>
						</div>
						<div>
							<div class="right_img">
								<img
									src="${path}/resources/images/landscape/background.png">
							</div>
							<div class="left_comment">
								<div>
									<strong style="color: #3d3d3d">남해로 떠나는<br>특별한 기차
										여행
									</strong>
								</div>
							</div>
						</div>
					</div>
					<div class="recommend_slide_item" data-color="skyblue">
						<div>
							<div class="right_img">
								<img src="${path}/resources/images/landscape/vegetarian.png">
							</div>
							<div class="left_comment">
								<div>
									<strong style="color: #3d3d3d">남해로 떠나는<br>특별한 기차
										여행
									</strong>
								</div>
							</div>
						</div>
						<div>
							<div class="right_img">
								<img
									src="${path}/resources/images/landscape/book_store_after_rain.png">
							</div>
							<div class="left_comment">
								<div>
									<strong style="color: #3d3d3d">남해의 멋과 맛을 담아,<br>스페이스
										미조
									</strong>
								</div>
							</div>
						</div>
						<div>
							<div class="right_img">
								<img
									src="${path}/resources/images/landscape/boys_are_coming.png">
							</div>
							<div class="left_comment">
								<div>
									<strong style="color: #3d3d3d">경남 의령으로 떠나는<br>특별한
										일출 여행🌞
									</strong>
								</div>
							</div>
						</div>
					</div>
					<div class="recommend_slide_item" data-color="yellow">
						<div>
							<div class="right_img">
								<img
									src="${path}/resources/images/landscape/boys_are_coming.png">
							</div>
							<div class="left_comment">
								<div>
									<strong style="color: #3d3d3d">경남 의령으로 떠나는<br>특별한
										일출 여행🌞
									</strong>
								</div>
							</div>
						</div>
						<div>
							<div class="right_img">
								<img
									src="${path}/resources/images/landscape/book_store_after_rain.png">
							</div>
							<div class="left_comment">
								<div>
									<strong style="color: #3d3d3d">남해의 멋과 맛을 담아,<br>스페이스
										미조
									</strong>
								</div>
							</div>
						</div>
						<div>
							<div class="right_img">
								<img src="${path}/resources/images/landscape/vegetarian.png">
							</div>
							<div class="left_comment">
								<div>
									<strong style="color: #3d3d3d">남해로 떠나는<br>특별한 기차
										여행
									</strong>
								</div>
							</div>
						</div>
					</div>
					<button class="recommondPrevBtn"></button>
					<button class="recommondNextBtn"></button>
					<!-- <button type="button" id="viewMore"></button> -->
				</div>
			</div>
	</div>

	<div>
		<!-- footer 시작 -->
		<%@ include file="/WEB-INF/views/common/footer.jsp"%>
		<!-- footer 끝 -->
	</div>
	</div>
</body>

</html>