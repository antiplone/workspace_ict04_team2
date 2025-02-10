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
<link rel="stylesheet" href="${path}/resources/css/common/header.css">
<link rel="stylesheet" href="${path}/resources/css/common/footer.css">
<link rel="stylesheet" href="${path}/resources/css/common/slide.css">

<script src="https://kit.fontawesome.com/3f6025c3d2.js" crossorigin="anonymous"></script>
<script src="${path}/resources/js/common/main2.js" defer></script>
<script src="${path}/resources/js/common/slider.js" defer></script>
<script src="${path}/resources/js/common/slider2.js" defer></script>
<script src="${path}/resources/js/common/request.js" defer></script>
<script src="${path}/resources/js/common/headerLink.js" defer></script>
</head>
<body>
		<!-- header 끝내기 -->
		<div id="slide_box_wrap" data-color="gray">
			<div class="slide_box">
				<div class="slide_list">
					<div class="carousel_wrapper">
						<div id="lastClone" class="slide_item" data-color="yellow"
							data-num="3">
							<div class="left_comment">
								<div>
									<strong style="color: #3d3d3d">남해의 멋과 맛을 담아, 스페이스 미조</strong> <br>
									<a href="#">자세히 보기</a>
								</div>
							</div>
							<div class="right_img">
								<img
									src="${path}/resources/images/landscape/book_store_after_rain.png">
							</div>
						</div>
						<div class="slide_item" data-color="gray" data-num="1">
							<div class="left_comment">
								<div>
									<strong style="color: #3d3d3d">경남 의령으로 떠나는<br>특별한
										일출 여행🌞
									</strong> <br> <a href="#">자세히 보기</a>
								</div>
							</div>
							<div class="right_img">
								<img
									src="${path}/resources/images/landscape/boys_are_coming.png">
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
								<img src="${path}/resources/images/landscape/vegetarian.png">
							</div>
						</div>
						<div class="slide_item" data-color="yellow" data-num="3">
							<div class="left_comment">
								<div>
									<strong style="color: #3d3d3d">남해의 멋과 맛을 담아,<br>스페이스
										미조
									</strong> <br> <a href="#">자세히 보기</a>
								</div>
							</div>
							<div class="right_img">
								<img
									src="${path}/resources/images/landscape/book_store_after_rain.png">
							</div>
						</div>
						<div id="firstClone" class="slide_item" data-color="gray"
							data-num="1">
							<div class="left_comment">
								<div>
									<strong style="color: #3d3d3d">경남 의령으로 떠나는<br>특별한
										일출 여행🌞
									</strong> <br> <a href="#">자세히 보기</a>
								</div>
							</div>
							<div class="right_img">
								<img
									src="${path}/resources/images/landscape/boys_are_coming.png">
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
			<h2>함께 떠나는 지역 여행</h2>
			<div class="recommend_box">
				<div class="recommend_carousel_wrapper">
					<div id="recomment_tour_list" align="center">
						<div id="firstClone" class="recommend_slide_item"
							data-color="gray">
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
						<!-- <button type="button" id="viewMore"></button> -->
					</div>
				</div>
			</div>
			<button class="recommondPrevBtn"></button>
			<button class="recommondNextBtn"></button>
		</div>

		<%-- 추천코스 --%>
		<div class="recom">
			<div class="recom_wrap">
				<div>날짜는 정했지만 어디로 놀러가야 할지 모르겠어요!</div>
				<div>여행 일정을 짜기 어렵다면 여기닷에서 정해드릴게요</div>
				<div class="recom_img">
					<img alt="여행가는 여성"
						src="${path}/resources/images/main/trip-woman.svg">
				</div>
				<div class="recom_btn">
					<a href="#"> 추천코스 자세히보기 <i class="fi fi-rs-arrow-right"></i>
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
						<a href="#"> 더보기 <i class="fi fi-rs-arrow-right rev_btn"></i>
						</a>
					</div>
				</div>

				<div class="rev_img">
					<img alt="이미지" src="${path}/resources/images/main/imgs.jpg">
					<!-- <div>
						<img alt="1" src="">
						<div>다대포 꿈의 낙조분수에서 세계 최대, 최고 수준의 음악분수를 즐기고 왔습니다.</div>
						<div>김*지</div>
					</div> -->
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
</body>

</html>