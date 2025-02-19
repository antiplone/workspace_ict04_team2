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
<link rel="stylesheet" href="${path}/resources/css/common/reset.css" />
<link rel="stylesheet" href="${path}/resources/css/common/common.css">
<link rel="stylesheet" href="${path}/resources/css/common/main.css">
<link rel="stylesheet" href="${path}/resources/css/common/slide.css">

<!-- bootstrap -->
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.3/examples/carousel/">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script async src="https://cdn.jsdelivr.net/npm/es-module-shims@1/dist/es-module-shims.min.js" crossorigin="anonymous"></script>

<script src="https://kit.fontawesome.com/3f6025c3d2.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.1.min.js" defer></script>

<script src="${path}/resources/js/common/pageLoad.js" defer></script>
</head>
<body >
	<div id="tableContentWrap">
	<div id="slide_box_wrap" data-color="gray">

		<div id="myCarousel" class="carousel slide mb-6"
			data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active" data-color="gray" data-num="1">
					<div class="flex_box d-block w-100">
							<div class="left_comment">
								<div>
									<strong style="color: #3d3d3d">남해로 떠나는<br>특별한 기차
										여행
									</strong> <br> <a href="#">자세히 보기</a>
								</div>
							</div>
							<div class="right_img">
								<img
									src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=7b43ffe6-74e9-4021-b071-df3691145f78&mode=raw">
							</div>
					</div>
				</div>
				<div class="carousel-item" data-color="skyblue" data-num="2">
					<div class="flex_box d-block w-100">
						<div class="left_comment">
							<div>
								<strong style="color: #3d3d3d">남해의 멋과 맛을 담아,<br>스페이스
									미조
								</strong> <br> <a href="#">자세히 보기</a>
							</div>
						</div>
						<div class="right_img">
							<img
								src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=4e21ed06-0075-4498-a9c2-8ec62c9d60aa&mode=raw">
						</div>
					</div>
				</div>
				<div class="carousel-item" data-color="yellow" data-num="3">
					<div class="flex_box d-block w-100">
						<div class="left_comment">
							<div>
								<strong style="color: #3d3d3d">경남 의령으로 떠나는<br>특별한
									일출 여행🌞
								</strong> <br> <a href="#">자세히 보기</a>
							</div>
						</div>
						<div class="right_img">
							<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=66f8e340-29fd-43fb-884c-ac28f94fbbf4&mode=raw">
						</div>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev main_carousel_direction" type="button"
				data-bs-target="#myCarousel" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next main_carousel_direction" type="button"
				data-bs-target="#myCarousel" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
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
	</div>
	
		<div class="mainaciont_wrap">
			<%@ include file="/WEB-INF/views/common/mainAction.jsp"%>
		</div>
		
		<%-- 추천코스 --%>
		<div class="recom">
			<div class="recom_wrap">
				<div>날짜는 정했지만 어디로 놀러가야 할지 모르겠어요!</div>
				<div>여행 일정을 짜기 어렵다면 여기닷에서 정해드릴게요</div>
				<div class="recom_img">
					<img alt="여행가는 여성" src="${path}/resources/images/main/trip-woman.svg">
				</div>
				<div class="recom_btn">
					<a onclick="load('${path}/regionList.rc')" class="pointerBtn"> 추천코스 자세히보기 <i class="fi fi-rs-arrow-right"></i>
					</a>
				</div>
			</div>
		</div>

		<%-- 여행후기 --%>
		<div class="rev">
			<div class="revs">
				<div class="rev_title">
					<h2>여행후기로 여행지 미리보기</h2>
					<div>
						<a onclick="load('${path}/reviewList.do')" class="pointerBtn"> 더보기 <i class="fi fi-rs-arrow-right rev_btn"></i>
						</a>
					</div>
				</div>
				<div class="mainactionb_wrap">
					<%@ include file="/WEB-INF/views/community/review/mainReviewAction.jsp"%>
				</div>
			</div>
		</div>

		<%-- 공지사항 & QnA --%>
		<div class="rev_notice">
			<div class="rev_notices">
				<div class="revs_notice">
					<div>공지사항</div>
					<div>
						<a href="#">2025년 1월 고객만족도조사 참여 고객 당첨자 공지</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>