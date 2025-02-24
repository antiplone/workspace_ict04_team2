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

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c1740f493a8a5f220d431fdb519af8b5"></script>

<script src="https://kit.fontawesome.com/3f6025c3d2.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.1.min.js" defer></script>

<script src="${path}/resources/js/common/pageLoad.js" defer></script>


</head>


<body >

	<div id="tableContentWrap">
	<div id="slide_box_wrap" data-color="gray">

		<div id="myCarousel" class="carousel slide mb-6 pretendardfont"
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
<<<<<<< HEAD
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
=======
				
				<div class="carousel-item active esamanrufont" data-color="lightpurple" data-num="1">
>>>>>>> origin/travel-planner/ver2
					<div class="flex_box d-block w-100">
						<div class="left_comment">
							<div>
								<strong class="size65" style="color: #3d3d3d">남해의 멋과 맛을 담아,<br>스페이스
									미조
								</strong> <br> <a class="size25 fontbold" href="#">자세히 보기</a>
							</div>
						</div>
						<div class="right_img">
							<img
								src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=4e21ed06-0075-4498-a9c2-8ec62c9d60aa&mode=raw">
						</div>
					</div>
				</div>
<<<<<<< HEAD
				<div class="carousel-item" data-color="yellow" data-num="3">
=======
				<div class="carousel-item pretendardfont" data-color="yellow" data-num="2">
>>>>>>> origin/travel-planner/ver2
					<div class="flex_box d-block w-100">
						<div class="left_comment">
							<div>
								<strong class="size55" style="color: #3d3d3d">경남 의령으로 떠나는<br>특별한
									일출 여행🌞
								</strong> <br> <a class="size35 fontnormal" href="#">자세히 보기</a>
							</div>
						</div>
						<div class="right_img">
							<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=66f8e340-29fd-43fb-884c-ac28f94fbbf4&mode=raw">
						</div>
					</div>
				</div>
<<<<<<< HEAD
=======
				<div class="carousel-item kotrafont" data-color="skyblue" data-num="3">
					<div class="flex_box d-block w-100">
							<div class="left_comment">
								<div>
									<strong class="size45" style="color: #3d3d3d">남해로 떠나는<br>특별한 기차
										여행
									</strong> <br> <a class="size15 fontlight" href="#">자세히 보기</a>
								</div>
							</div>
							<div class="right_img">
								<img
									src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=7b43ffe6-74e9-4021-b071-df3691145f78&mode=raw">
							</div>
					</div>
				</div>
>>>>>>> origin/travel-planner/ver2
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
	
	
	<div id="carouselShow" class="recomment_tour_list_wrap carousel slide">
		<h2>함께 떠나는 지역 여행</h2>
		<div class="recommend_box">
			<div class="recommend_carousel_wrapper">
				<ul id="recomment_in_wrap" class="recomment_in_wrap carousel-inner">
					<c:forEach var="dto1" items="${list1}">
						<li class="abc d_block">
<%-- 						<a href="${path}/board_list.dol?rNum=${dto1.r_num}"> --%>
							<a onclick="javascript:history.forward(load('${path}/regionList.rc'))">
								<div class="text_center">글번호 : ${dto1.r_num}</div>
								<div class="text_center recImgWrap">
									<img src="${dto1.r_img}" />
								</div>
								<div class="text_center">${fn:substring(dto1.r_title,0,10)}.... </div>
								<div class="text_center"> 작성자 : ${dto1.r_content}
										
								</div>
								<div class="text_center">조회수 : ${dto1.r_readcnt}</div>
							</a>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<button id="recommondPrevBtn" class="recommondPrevBtn" onclick="changePrev(28)"></button>
		<button id="recommondNextBtn" class="recommondNextBtn" onclick="changeNext(28)"></button>
	</div>
		
		<%-- 추천코스 --%>
		<div class="recom">
			<div class="recom_wrap">
				<div class="cafessurround size45">날짜는 정했지만 어디로 놀러가야 할지 모르겠어요!</div>
				<div class="paperlogy size35">여행 일정을 짜기 어렵다면 여기닷에서 정해드릴게요</div>
				<div class="recom_img">
					<img alt="여행가는 여성" src="${path}/resources/images/main/trip-woman.svg">
				</div>
				<div class="recom_btn pretendardfont size25 ">
					<a onclick="load('${path}/regionList.rc')" class="pointerBtn"> 추천코스 자세히보기 <i class="fi fi-rs-arrow-right"></i>
					</a>
				</div>
			</div>
		</div>

		<%-- 여행후기 --%>
		<div class="rev esamanrufont">
			<div class="revs">
				<div class="rev_title">
					<h2 class="pretendardfont size55">여행후기로 여행지 미리보기</h2>
					<div>
            <a onclick="load('/travel_planner/reviewList.do')" class="pointerBtn"> 더보기 <i class="fi fi-rs-arrow-right rev_btn"></i>
						</a>
					</div>
				</div>

				<%-- 후기 게시글들 --%>
				<div class="rev_imgs">
					<%-- 리뷰 게시글이 있으면 반복 --%>
					<c:forEach var="dto" items="${list}">
					
					 <div class="rev_img revBtn" id="revImg${dto.r_num}">
					 	<%-- <a href="${path}/reviewDetail.do?r_num=${dto.r_num}"> --%>
							<div class="rev_image">
								<img alt="${dto.r_num}" src="${dto.r_img}">
							</div>
							<div class="rev_img_title">
								<div class="rev_img_text1">${dto.r_title}</div>
								<div class="rev_img_text2">
									<div>${dto.m_name}</div>
									<div>
										<i class="fi fi-rr-eye"></i>
										${dto.r_readCnt}
									</div>
									<div>${dto.r_regDate}</div>
								</div>
							</div>
						<!-- </a> -->
					</div>
					
					</c:forEach>
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